#!/bin/bash

# exit error
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")"; pwd)"
source $SCRIPT_DIR/../global/log.sh

echo ">> start to init $2 modules ..."
while true; do
    # 检查端口是否开启
    if lsof -i :$1 > /dev/null 2>&1; then
        break  # 端口开启后退出循环
    else
        sleep 5  # 等待5秒后重试
    fi
done
# --verbose
docker exec $2 sh -c "cd /data && npm install $3 --no-audit --offline node-red-contrib-modbus@5.43.0" \
|| error "node-red install modbus failed!"

docker exec $2 sh -c "cd /data && npm install $3 --no-audit --offline node-red-contrib-opcua@0.2.339" \
|| error "node-red install opcua failed!"

docker exec $2 sh -c "cd /data && npm install $3 --no-audit --offline node-red-contrib-opcda-client@0.0.7" \
|| error "node-red install opcda failed!"

docker exec $2 sh -c "cd /data && npm install $3 --no-audit --offline node-red-contrib-buffer-parser@3.2.2" \
|| error "node-red install buffer-parser failed!"

# license: GPL-3.0-or-later 默认不安装，用户可以自主安装
#docker exec $2 sh -c "cd /data && npm install $3 --no-audit --offline node-red-contrib-s7@3.1.0" \
#|| error "node-red install Siemens s7 failed!"

docker exec $2 sh -c "cd /data && npm install $3 --no-audit --offline node-red-contrib-mcprotocol@1.2.1" \
|| error "node-red install MITSUBISHI mcprotocol failed!"

docker exec $2 sh -c "cd /data && npm install $3 --no-audit --offline node-red-contrib-omron-fins@0.5.0" \
|| error "node-red install OMRON fins failed!"

docker exec $2 sh -c "cd /data && npm install $3 --no-audit --offline node-red-contrib-ui-ping@1.0.0" \
|| error "node-red install ui-ping failed!"

docker exec $2 sh -c "cd /data && npm install $3 --no-audit --offline node-red-contrib-postgresql@0.14.2" \
|| error "node-red install postgresq failed!"

docker exec $2 npm install $3 --offline --prefix /data /data/offline_modules/node-red-node-supmodel \
|| error "node-red install supmodel failed!"

docker exec $2 npm install $3 --offline --prefix /data /data/offline_modules/node-red-node-model-converter \
|| error "node-red install model-converter failed!"

# overide js file
docker exec $2 sh -c 'cp /data/override/*.js /usr/src/node-red/node_modules/@node-red/editor-client/public/red/' >/dev/null
docker restart $2 >/dev/null