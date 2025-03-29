#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")"; pwd)"
# 去掉回车等符号，避免出现^m
sed -i 's/\r$//' $SCRIPT_DIR/../../.env
# 设置.env环境变量
export $(grep -v '^#' $SCRIPT_DIR/../../.env | xargs)
REDIRECT_BASE_URL=$ENTRANCE_PROTOCOL://$ENTRANCE_DOMAIN:$ENTRANCE_PORT
if [ $ENTRANCE_PORT == '80' ] || [ $ENTRANCE_PORT == '443' ]; then
  REDIRECT_BASE_URL=$ENTRANCE_PROTOCOL://$ENTRANCE_DOMAIN
fi
export BASE_URL=$REDIRECT_BASE_URL
if [ "$OS_RESOURCE_SPEC" == "1" ]; then
  export ENABLE_ELK=none
  export ENABLE_PORTAINER=none
  export ENABLE_MCP=none
else
  export ENABLE_ELK=menu
  export ENABLE_PORTAINER=menu
  export ENABLE_MCP=menu
fi

# 输入文件（模板文件）和输出文件
TEMPLATE_FILE=$SCRIPT_DIR/../../mount/kong/kong_config.yml.tpl
OUTPUT_FILE=$SCRIPT_DIR/../../mount/kong/kong_config.yml

rm -f $OUTPUT_FILE

# 使用 envsubst 替换模板文件中的环境变量，并输出到新文件
envsubst < "$TEMPLATE_FILE" > "$OUTPUT_FILE"

echo "Info: success to generate kong_config.yml"