#!/bin/sh
set -e

if [ -n "$MEGA_USER" ] && [ -n "$MEGA_PASS" ]; then
    mega-login "$MEGA_USER" "$MEGA_PASS"
fi

exec "$@"
