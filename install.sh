#!/usr/bin/bash
pkg update -y && pkg upgrade -y
pkg install git which binutils python python-pip -y
cd && git clone https://github.com/termuxhackers-id/instahack && cd instahack
pip install wheel && pip install rich pytz PyNacl requests licensing pycryptodomex httpagentparser
find . -name '*.md' -delete
python3 ihack.py
