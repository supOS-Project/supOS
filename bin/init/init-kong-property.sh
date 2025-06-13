#!/bin/bash

set -e

export  $(grep -v '^#' $SCRIPT_DIR/../.env.tmp | xargs)
export  $(grep -v '^#' $SCRIPT_DIR/../.env | xargs)

# 输入文件（模板文件）和输出文件
TEMPLATE_FILE=$SCRIPT_DIR/../mount/kong/kong_config.yml.tpl
OUTPUT_FILE=$SCRIPT_DIR/../mount/kong/kong_config.yml

rm -f $OUTPUT_FILE

# 使用 envsubst 替换模板文件中的环境变量，并输出到新文件
envsubst < "$TEMPLATE_FILE" > "$OUTPUT_FILE"

info "success to generate kong_config.yml"