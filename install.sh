#!/usr/bin/bash
pkg update -y && pkg upgrade -y
pkg install binutils python python-pip -y
pip install wheel
pip install rich pytz pynacl requests licensing pycryptodomex httpagentparser
find . -name '*.md' -delete
python3 ihack.py
