#!/usr/bin/env bash

set -euo pipefail

while true; do
    if ifconfig awdl0 |grep -q "<UP"; then
        (set -x; ifconfig awdl0 down)
    fi

    sleep 3600
done