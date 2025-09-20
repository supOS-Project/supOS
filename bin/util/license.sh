#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")"; pwd)"

# 保留加了授权校验的kong插件
if [ -d "$SCRIPT_DIR/../../mount/kong/kong-plugin-auth-checker-license" ]; then
    rm -rf $SCRIPT_DIR/../../mount/kong/kong-plugin-auth-checker
    mv $SCRIPT_DIR/../../mount/kong/kong-plugin-auth-checker-license $SCRIPT_DIR/../../mount/kong/kong-plugin-auth-checker
fi

# 保留需要授权的界面
if [ -d "$SCRIPT_DIR/../../mount/keycloak/theme/keycloak.v2.license" ]; then
    rm -rf $SCRIPT_DIR/../../mount/keycloak/theme/keycloak.v2
    mv $SCRIPT_DIR/../../mount/keycloak/theme/keycloak.v2.license $SCRIPT_DIR/../../mount/keycloak/theme/keycloak.v2
fi