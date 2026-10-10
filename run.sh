#!/usr/bin/env bash

caddy run --config /render/Caddyfile &

/render/ttyd --port 8100 --writable bash &

/render/tailscaled --tun=userspace-networking &
PID=$!

until /render/tailscale up --authkey="${TAILSCALE_AUTHKEY}" --hostname="${RENDER_SERVICE_NAME}" --advertise-exit-node; do
  sleep 0.1
done

wait ${PID}
