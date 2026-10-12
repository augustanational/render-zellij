#!/usr/bin/env bash
set -x

wget https://github.com/9001/copyparty/releases/latest/download/copyparty-sfx.py
chmod +x ./copyparty-sfx.py
./copyparty-sfx.py -p 9000 --wram -v /:/:A
