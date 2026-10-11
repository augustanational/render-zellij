#!/usr/bin/env bash
set -x

caddy run --config /render/Caddyfile &

tailcat serve all,exit-node &

/render/zellij attach --create-background

/render/zellij web --port 8100
