#!/usr/bin/env bash
set -x

/render/zellij attach --create-background

/render/zellij web --ip 0.0.0.0 --port 8082
