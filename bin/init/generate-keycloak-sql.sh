#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")"; pwd)"
# 去掉回车等符号，避免出现^m
sed -i 's/\r$//' $SCRIPT_DIR/../../.env
# 设置.env环境变量
export $(grep -v '^#' $SCRIPT_DIR/../../.env | xargs)

KEYCLOAK_BASE_URL=$ENTRANCE_PROTOCOL://$ENTRANCE_DOMAIN:$ENTRANCE_PORT
KEYCLOAK_BASE_URL_13020=$ENTRANCE_PROTOCOL://$ENTRANCE_DOMAIN
if [ $ENTRANCE_PORT == '80' ] || [ $ENTRANCE_PORT == '443' ]; then
  KEYCLOAK_BASE_URL=$ENTRANCE_PROTOCOL://$ENTRANCE_DOMAIN
fi

# 开始 替换keycloak 初始化sql的domain和port变量
KEYCLOAK_TPL_FILE=$SCRIPT_DIR/../../mount/postgresql/init-scripts/create_keycloak_database.sql.tpl
KEYCLOAK_OUTPUT_FILE=$SCRIPT_DIR/../../mount/postgresql/init-scripts/create_keycloak_database.sql

#替换KEYCLOAK_BASE_URL和KEYCLOAK_BASE_URL_13020
rm -f $KEYCLOAK_OUTPUT_FILE && cp $KEYCLOAK_TPL_FILE $KEYCLOAK_OUTPUT_FILE
sed -i "s|KEYCLOAK_BASE_URL_13020_VAR|$KEYCLOAK_BASE_URL_13020|g" $KEYCLOAK_OUTPUT_FILE
sed -i "s|KEYCLOAK_BASE_URL_VAR|$KEYCLOAK_BASE_URL|g" $KEYCLOAK_OUTPUT_FILE
sed -i "s|LANGUAGE_VAR|$LANGUAGE|g" $KEYCLOAK_OUTPUT_FILE

echo "Info: success to generate $KEYCLOAK_OUTPUT_FILE"
