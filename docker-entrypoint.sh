#!/bin/bash
set -eo pipefail

_main() {
    if [ "$ENABLE_MIRROR" == "true" ]; then
        (sed -i "s,deb.debian.org,mirrors.huaweicloud.com,g" /etc/apt/sources.list && sed -i "s,security.debian.org,mirrors.huaweicloud.com,g" /etc/apt/sources.list) || true
    fi
    exec "$@"
}

_main "$@"