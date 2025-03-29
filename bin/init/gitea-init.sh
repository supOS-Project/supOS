#!/bin/bash

# exit error
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")"; pwd)"
source $SCRIPT_DIR/../global/log.sh
source $SCRIPT_DIR/../../.env

echo ">> start to init gitea ..."
docker exec --user 1000 gitea sh -c "gitea admin user create --admin --username supos --password Supos@1304 --email supos@example.com" \
|| if [ "$1" == "--verbose" ]; then warn "Failed to create admin user"; fi

docker exec --user 1000 gitea sh -c "gitea admin auth add-oauth --name $OAUTH_CLIENT_NAME --provider openidConnect --key $OAUTH_CLIENT_ID \
--secret $OAUTH_CLIENT_SECRET --auto-discover-url $OAUTH_ISSUER_URI/realms/supos/.well-known/openid-configuration --skip-local-2fa true" \
&& echo "Successfully set gitea OAuth!" \
|| if [ "$1" == "--verbose" ]; then warn "Failed to add gitea OAuth authentication"; fi

