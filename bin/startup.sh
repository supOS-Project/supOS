#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")"; pwd)"
# 去掉回车等符号，避免出现^m
sed -i 's/\r$//' $SCRIPT_DIR/../.env
# 设置.env环境变量
source $SCRIPT_DIR/../.env
source $SCRIPT_DIR/global/log.sh
source $SCRIPT_DIR/global/choose-profile-command.sh

# 检查ENTRANCE_DOMAIN是否为本地地址
if [[ "$ENTRANCE_DOMAIN" == "127.0.0.1" ]]; then
    echo -e "\n"
    read -p "WARNING: Are you sure you want to visit the platform by 127.0.0.1? (y/n): " confirm_ip
    if [[ "$confirm_ip" != "y" && "$confirm_ip" != "Y" ]]; then
        exit 0
    fi
    echo -e "\n"
fi

# 执行安装docker脚本
source $SCRIPT_DIR/install-deb/install-docker.sh

# 选择需要启动哪些服务
if [ ! -f $VOLUMES_PATH/backend/system/active-services.txt ]; then 
  if [ "$OS_RESOURCE_SPEC" == "1" ]; then 
    command=$(chooseProfile1) 
  else 
    command=$(chooseProfile2) 
  fi
else 
  command=$(sed -n '2p' $VOLUMES_PATH/backend/system/active-services.txt)
fi

# 生成临时环境变量
source $SCRIPT_DIR/util/set-temp-env.sh "$command"

# 替换文件变量
source $SCRIPT_DIR/init/init-keycloak-sql.sh
source $SCRIPT_DIR/init/init-kong-property.sh

DOCKER_COMPOSE_FILE=$SCRIPT_DIR/../docker-compose-8c16g.yml
if [ "$OS_RESOURCE_SPEC" == "1" ]; then
  DOCKER_COMPOSE_FILE=$SCRIPT_DIR/../docker-compose-4c8g.yml
fi

# 创建volumes目录, 将mount目录迁移到volumes目录
if [ -d "$VOLUMES_PATH" ] && [ "$(ls -A $VOLUMES_PATH)" ]; then
  info "stop services and apps..."
  docker compose --env-file $SCRIPT_DIR/../.env --env-file $SCRIPT_DIR/../.env.tmp --project-name supos $command -f $DOCKER_COMPOSE_FILE stop > /dev/null 2>&1
  # 停止所有app的容器
  docker ps -a -q --filter "network=supos_default_network" | xargs --no-run-if-empty docker stop > /dev/null 2>&1
  info "complete!"
  source $SCRIPT_DIR/init/update-volumes.sh
else
  source $SCRIPT_DIR/init/init-volumes.sh
fi

# 加载本地镜像
if [ -d "$SCRIPT_DIR/../images/" ] && [ "$(ls -A $SCRIPT_DIR/../images/)" ]; then
  source $SCRIPT_DIR/util/load-images.sh
fi

# docker compose执行成功后，初始化node-red自定义节点
docker compose --env-file $SCRIPT_DIR/../.env --env-file $SCRIPT_DIR/../.env.tmp --project-name supos $command -f $DOCKER_COMPOSE_FILE up -d && \
source $SCRIPT_DIR/init/init-nodered.sh $1 && \
#bash $SCRIPT_DIR/init/node-red-init.sh 1889 eventflow $1 && \
source $SCRIPT_DIR/init/init-minio.sh $1 > /dev/null 2>&1 && \
source $SCRIPT_DIR/init/init-portainer.sh
