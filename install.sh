#!/data/data/com.termux/files/usr/bin/bash
echo -e "\n[ installer tool for instahack @v2.0.5 - by Termux Hackers ID ]\n"
echo -e "\n[wait] running pkg update and pkg upgrade (📦) ...\n"
pkg update -y && pkg upgrade -y
echo -e "\n[info] installing package and dependencies ...\n"
pkg install git which binutils python python-pip -y
echo -e "\n[info] cloning github repository -> 'instahack' ...\n"
git clone https://github.com/termuxhackers-id/instahack && cd instahack
echo -e "\n[info] installing module and requirements ...\n"
pip install wheel && pip install rich pytz PyNacl requests licensing pycryptodomex phonenumbers httpagentparser
echo -e "\n[info] remove README.md from instahack directories ...\n"
find . -name '*.md' -delete
echo -e "\n[done] running 'ihack.py' to open instahack console ...\n"
python3 ihack.py
