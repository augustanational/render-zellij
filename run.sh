#!/usr/bin/env bash
set -x

caddy run --config /render/Caddyfile &

/render/zellij attach --create-background

/render/zellij web --port 8100
