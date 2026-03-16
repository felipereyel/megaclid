#!/bin/sh
set -e

if [ -z "$MEGA_USER" ] || [ -z "$MEGA_PASS" ]; then
    echo "MEGA_USER and MEGA_PASS environment variables are required" >&2
    exit 1
fi

mega-login "$MEGA_USER" "$MEGA_PASS"
trap 'mega-logout' EXIT
"$@"
