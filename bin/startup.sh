#!/bin/bash

# exit error
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")"; pwd)"
source $SCRIPT_DIR/global/log.sh
source $SCRIPT_DIR/global/choose-profile-command.sh

# 去掉回车等符号，避免出现^m
sed -i 's/\r$//' $SCRIPT_DIR/../.env
cat $SCRIPT_DIR/../.env && echo -e "\n"
read -p "Please confirm env properties, do you want to continue? (y/n): " confirmation

if [[ "$confirmation" != "y" && "$confirmation" != "Y" ]]; then
    exit 0
fi

# 检查ENTRANCE_DOMAIN是否为本地地址
entrance_domain=$(grep -E '^ENTRANCE_DOMAIN=' $SCRIPT_DIR/../.env | sed -e 's/^ENTRANCE_DOMAIN=//' -e 's/[ "\t]//g')
if [[ "$entrance_domain" == "127.0.0.1" ]]; then
    echo -e "\n"
    read -p "WARNING: Are you sure you want to visit the platform by 127.0.0.1? (y/n): " confirm_ip
    if [[ "$confirm_ip" != "y" && "$confirm_ip" != "Y" ]]; then
        exit 0
    fi
    echo -e "\n"
fi

# 执行安装docker脚本
bash $SCRIPT_DIR/install-deb/install-docker.sh

# 设置.env环境变量
source $SCRIPT_DIR/../.env

# 设置.env.tmp临时环境变量
if [ "$LANGUAGE" == "zh-CN" ]; then
  echo "GRAFANA_LANG=zh-Hans" > $SCRIPT_DIR/../.env.tmp
  echo "FUXA_LANG=zh-cn" >> $SCRIPT_DIR/../.env.tmp
else
  echo "GRAFANA_LANG=en-US" > $SCRIPT_DIR/../.env.tmp
  echo "FUXA_LANG=en" >> $SCRIPT_DIR/../.env.tmp
fi

# 替换文件变量
bash $SCRIPT_DIR/init/generate-keycloak-sql.sh && bash $SCRIPT_DIR/init/generate-kong-property.sh

DOCKER_COMPOSE_FILE=$SCRIPT_DIR/../docker-compose-8c16g.yml
if [ "$OS_RESOURCE_SPEC" == "1" ]; then
  DOCKER_COMPOSE_FILE=$SCRIPT_DIR/../docker-compose-4c8g.yml
fi

# 选择需要启动哪些服务
if [ ! -f $VOLUMES_PATH/backend/system/active-services.txt ]; then 
  command=$(chooseProfile)
else 
  command=$(sed -n '2p' $VOLUMES_PATH/backend/system/active-services.txt)
fi

# 创建volumes目录, 将mount目录迁移到volumes目录
if [ -d "$VOLUMES_PATH" ] && [ "$(ls -A $VOLUMES_PATH)" ]; then
  echo "Info: stop services ..."
  docker compose --project-name supos $command -f $DOCKER_COMPOSE_FILE stop > /dev/null 2>&1
  echo "Info: complete!"
  bash $SCRIPT_DIR/init/update-volumes.sh $VOLUMES_PATH
else
  bash $SCRIPT_DIR/init/create-volumes.sh $VOLUMES_PATH
fi

# 加载本地镜像
if [ -d "$SCRIPT_DIR/../images/" ] && [ "$(ls -A $SCRIPT_DIR/../images/)" ]; then
  bash $SCRIPT_DIR/init/load-images.sh
fi

# docker compose执行成功后，初始化node-red自定义节点
docker compose --env-file $SCRIPT_DIR/../.env --env-file $SCRIPT_DIR/../.env.tmp --project-name supos $command -f $DOCKER_COMPOSE_FILE up -d && \
bash $SCRIPT_DIR/init/node-red-init.sh 1880 nodered $1 && \
bash $SCRIPT_DIR/init/node-red-init.sh 1889 eventflow $1 && \
bash $SCRIPT_DIR/init/minio-init.sh $1 > /dev/null 2>&1

rm -f $SCRIPT_DIR/../.env.tmp > /dev/null 2>&1
