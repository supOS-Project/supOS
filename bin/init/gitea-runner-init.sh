#!/bin/bash

# exit error
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")"; pwd)"
source $SCRIPT_DIR/../global/log.sh

echo ">> start to init gitea runner"
TOKEN=$(docker exec --user 1000 gitea sh -c "gitea actions generate-runner-token")

# 使用sed替换docker-compose.yml文件中的值
sed -i "s/GITEA_RUNNER_REGISTRATION_TOKEN: \".*\"/GITEA_RUNNER_REGISTRATION_TOKEN: \"$TOKEN\"/" $SCRIPT_DIR/../../docker-compose-8c16g.yml

docker rm -f gitea_runner && docker compose --env-file $SCRIPT_DIR/../../.env --project-name supos -f $SCRIPT_DIR/../../docker-compose-8c16g.yml up -d runner --no-recreate

echo "<< gitea runner inited successfully"