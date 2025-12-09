#!/bin/bash
set -euo pipefail

CMK_DOMAIN='checkmk.docker.home.arpa' # Traefik FQDN
CMK_SITE='cmk'                        # Site name
REG_USER='agent_registration'         # Automation User
API_SECRET=$(vault kv get -field checkmk::agent_registration_password kv/puppet)
API_URL="https://${CMK_DOMAIN}/${CMK_SITE}/check_mk/api/1.0"

DOWNLOAD_PATH="/tmp/checkmk_agent.deb"
OS_TYPE="linux_deb"

echo "Downloading agent from $API_URL..."

curl -f -L -k \
    -G \
    --header "Authorization: Bearer ${REG_USER} ${API_SECRET}" \
    --header "Accept: application/octet-stream" \
    --data-urlencode "agent_type=generic" \
    --data-urlencode "os_type=${OS_TYPE}" \
    -o "$DOWNLOAD_PATH" \
    "${API_URL}/domain-types/agent/actions/download_by_host/invoke"

echo "Download attempted to $DOWNLOAD_PATH"
