#!/usr/bin/env bash
set -x
TAILSCALE_VERSION=${TAILSCALE_VERSION:-1.64.0}
TS_FILE=tailscale_${TAILSCALE_VERSION}_amd64.tgz
wget -q "https://pkgs.tailscale.com/stable/${TS_FILE}" && tar xzf "${TS_FILE}" --strip-components=1
wget https://github.com/tsl0922/ttyd/releases/download/1.7.7/ttyd.x86_64 --output-document=ttyd
wget https://codeberg.org/meav/rendertailscale/raw/branch/main/Caddyfile
chmod +x /render/ttyd

mkdir -p /var/run/tailscale /var/cache/tailscale /var/lib/tailscale
