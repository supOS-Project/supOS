#!/bin/bash

set -e

VOLUMES_PATH=$1
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")"; pwd)"

source $SCRIPT_DIR/../global/log.sh

# load npm cache
rm -rf $SCRIPT_DIR/../../mount/node-red/.npm/
rm -rf $SCRIPT_DIR/../../mount/eventflow/.npm/
tar -zxvf $SCRIPT_DIR/../../mount/node-red/npmCache.tar.gz -C $SCRIPT_DIR/../../mount/node-red/ > /dev/null 2>&1
tar -zxvf $SCRIPT_DIR/../../mount/eventflow/npmCache.tar.gz -C $SCRIPT_DIR/../../mount/eventflow/ > /dev/null 2>&1

echo "Info: loading npm cache complete."
find $SCRIPT_DIR/../../mount/grafana/data/plugins/ -type f -name "*.tar" -exec tar -xvf {} -C $SCRIPT_DIR/../../mount/grafana/data/plugins/ \;

# 更新volumes目录
cp -r $SCRIPT_DIR/../../mount/grafana/data/plugins/* $VOLUMES_PATH/grafana/data/plugins/
cp -r $SCRIPT_DIR/../../mount/keycloak/theme/* $VOLUMES_PATH/keycloak/theme/
cp -r $SCRIPT_DIR/../../mount/kong/* $VOLUMES_PATH/kong/
cp $SCRIPT_DIR/../../mount/emqx/config/* $VOLUMES_PATH/emqx/config/
rm -rf $VOLUMES_PATH/node-red/.npm && cp -r $SCRIPT_DIR/../../mount/node-red/.npm  $VOLUMES_PATH/node-red/
cp -r $SCRIPT_DIR/../../mount/node-red/* $VOLUMES_PATH/node-red/
mkdir -p $VOLUMES_PATH/eventflow/ && cp -r $SCRIPT_DIR/../../mount/eventflow/* $VOLUMES_PATH/eventflow/
rm -rf $VOLUMES_PATH/eventflow/.npm && cp -r $SCRIPT_DIR/../../mount/eventflow/.npm  $VOLUMES_PATH/eventflow/
cp -r $SCRIPT_DIR/../../mount/filebeat/*.yml $VOLUMES_PATH/filebeat/
cp -r $SCRIPT_DIR/../../mount/postgresql/* $VOLUMES_PATH/postgresql/
cp -r $SCRIPT_DIR/../../mount/backend/log/topology.log $VOLUMES_PATH/backend/log/topology.log
cp -r $SCRIPT_DIR/../../mount/backend/system/* $VOLUMES_PATH/backend/system/
mkdir -p $VOLUMES_PATH/fuxa/appdata/ && cp $SCRIPT_DIR/../../mount/fuxa/appdata/settings.js $VOLUMES_PATH/fuxa/appdata/

chown 999:0 -R $VOLUMES_PATH/mysql
chown 999:0 -R $VOLUMES_PATH/postgresql
chown 1000:1000 -R $VOLUMES_PATH/emqx
chown 1000:0 -R $VOLUMES_PATH/keycloak
chown 755:0 -R $VOLUMES_PATH/grafana

cp $SCRIPT_DIR/../../docker-compose-8c16g.yml $VOLUMES_PATH/backend/system/
if [ -f $SCRIPT_DIR/../global/active-services.txt ]; then 
  mv $SCRIPT_DIR/../global/active-services.txt $VOLUMES_PATH/backend/system/
fi

# 设置.sh文件为可执行文件
find $VOLUMES_PATH -name "*.sh" -exec chmod +x {} \;

echo "Info: success to update folder: $VOLUMES_PATH"