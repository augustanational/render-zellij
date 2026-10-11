#!/usr/bin/env bash
set -x

/render/mkcert-v1.4.4-linux-amd64 localhost 127.0.0.1 0.0.0.0

/render/zellij attach --create-background

sleep 10s

/render/zellij web --ip 0.0.0.0 --port 8082 --cert localhost+2.pem --key localhost+2-key.pem &

while true; do
    sleep 10s
    /render/zellij web --ip 0.0.0.0 --port 8082 --status
done
