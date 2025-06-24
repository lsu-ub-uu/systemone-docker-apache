#!/bin/bash
set -euo pipefail

: "${SYSTEM_NAME:?SYSTEM_NAME must be set. Failed to start container correctly}"

INCLUDE_LINE="Include conf/extra/${SYSTEM_NAME}-proxy-vhosts.conf"

if ! grep -Fxq "$INCLUDE_LINE" /usr/local/apache2/conf/httpd.conf; then
    echo "$INCLUDE_LINE" >> /usr/local/apache2/conf/httpd.conf
fi

echo "Starting Apache with vhost config for: ${SYSTEM_NAME}"
exec httpd-foreground