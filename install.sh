#!/data/data/com.termux/files/usr/bin/bash
echo -e "[ installer tool for instahack @v2.0.5 - by Termux Hackers ID ]\n"
echo -e "[wait] running pkg update and pkg upgrade (📦) ..."
pkg update -y && pkg upgrade -y
echo -e "[info] installing package and dependencies ..."
pkg install git which binutils python python-pip -y
echo -e "[info] cloning github repository -> 'instahack' ..."
git clone https://github.com/termuxhackers-id/instahack && cd instahack
echo -e "[info] installing module and requirements ..."
pip install wheel && pip install rich pytz PyNacl requests licensing pycryptodomex phonenumbers httpagentparser
echo -e "[info] remove README.md from instahack directories ..."
find . -name '*.md' -delete
echo -e "[done] running 'ihack.py' to open instahack console ..."
python3 ihack.py
