#!/bin/bash

# 设置.env.tmp临时环境变量
if [ "$LANGUAGE" == "zh-CN" ]; then
  echo "GRAFANA_LANG=zh-Hans" > $SCRIPT_DIR/../.env.tmp
  echo "FUXA_LANG=zh-cn" >> $SCRIPT_DIR/../.env.tmp
else
  echo "GRAFANA_LANG=en-US" > $SCRIPT_DIR/../.env.tmp
  echo "FUXA_LANG=en" >> $SCRIPT_DIR/../.env.tmp
fi

# 判断是否启用了ELK
if echo "$1" | grep -q "elk"; then
   echo "ENABLE_ELK=true" >> $SCRIPT_DIR/../.env.tmp
   echo "ENABLE_ELK_MENU=menu" >> $SCRIPT_DIR/../.env.tmp
else 
   echo "ENABLE_ELK=false" >> $SCRIPT_DIR/../.env.tmp
   echo "ENABLE_ELK_MENU=none" >> $SCRIPT_DIR/../.env.tmp
fi

# 判断MQTT
if echo "$1" | grep -q "gmqtt"; then
   echo "MQTT_PLUG=gmqtt" >> $SCRIPT_DIR/../.env.tmp
else 
   echo "MQTT_PLUG=emqx" >> $SCRIPT_DIR/../.env.tmp
fi

if echo "$1" | grep -q "mcpclient"; then
   echo "ENABLE_MCP=menu" >> $SCRIPT_DIR/../.env.tmp
else 
   echo "ENABLE_MCP=none" >> $SCRIPT_DIR/../.env.tmp
fi

REDIRECT_BASE_URL=$ENTRANCE_PROTOCOL://$ENTRANCE_DOMAIN:$ENTRANCE_PORT
if [ $ENTRANCE_PORT == '80' ] || [ $ENTRANCE_PORT == '443' ]; then
  REDIRECT_BASE_URL=$ENTRANCE_PROTOCOL://$ENTRANCE_DOMAIN
fi
echo "BASE_URL=$REDIRECT_BASE_URL" >> $SCRIPT_DIR/../.env.tmp
if [ "$OS_RESOURCE_SPEC" == "1" ]; then
    echo "ENABLE_PORTAINER=none" >> $SCRIPT_DIR/../.env.tmp
else 
    echo "ENABLE_PORTAINER=menu" >> $SCRIPT_DIR/../.env.tmp
fi