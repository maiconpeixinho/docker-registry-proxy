#!/bin/sh
set -e
sed -i "s|{{REGISTRY_HOST}}|$REGISTRY_HOST|;s|{{PROXY_TIMEOUT}}|$PROXY_TIMEOUT|;s|{{REGISTRY_PORT}}|$REGISTRY_PORT|;s|{{SERVER_NAME}}|$SERVER_NAME|" /etc/nginx/conf.d/default.conf
exec "$@"
