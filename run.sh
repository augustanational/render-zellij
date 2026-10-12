#!/usr/bin/env bash
set -x

caddy run --config /render/Caddyfile &

mkdir -p /root/.config/tailcat/keys
cp /etc/secrets/default.private.json /root/.config/tailcat/keys/default.private.json
tailcat serve all,exit-node &

/render/zellij attach --create-background

/render/zellij web --port 8100
