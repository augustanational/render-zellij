#!/usr/bin/env bash
set -x

wget https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz
tar -xvf zellij-x86_64-unknown-linux-musl.tar.gz
chmod +x zellij

mkdir -p /root/.local/share/zellij
cp tokens.db /root/.local/share/zellij/tokens.db
