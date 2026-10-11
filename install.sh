#!/usr/bin/env bash
set -x

wget https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz
tar -xvf zellij-x86_64-unknown-linux-musl.tar.gz
chmod +x zellij

mkdir -p /root/.local/share/zellij
cp tokens.db /root/.local/share/zellij/tokens.db

wget https://github.com/tailscale/tailcat/releases/download/v0.7.0/tailcat_0.7.0_linux_amd64.deb
apt install -y ./tailcat_0.7.0_linux_amd64.deb

mkdir -p /root/.config/tailcat/keys
cp /etc/secrets/default.private.json /root/.config/tailcat/keys/default.private.json
