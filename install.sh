#!/data/data/com.termux/files/usr/bin/bash
echo -e "\n[ installer tool for instahack @v2.0.9 - by Termux Hackers ID ]\n"
echo -e "\n[wait] running pkg update and pkg upgrade ...\n"
pkg update -y && pkg upgrade -y
echo -e "\n[info] installing new repository: tur-repo ...\n"
pkg install tur-repo -y && pkg update -y
echo -e "\n[info] installing package and dependencies ...\n"
pkg install git nano binutils build-essential python3.10 -y
echo 'alias python3="python3.10"' >> $PREFIX/etc/bash.bashrc
echo 'alias pip="python3.10 -m pip"' >> $PREFIX/etc/bash.bashrc
source $PREFIX/etc/bash.bashrc
echo -e "\n[info] cloning github repository -> 'instahack' ...\n"
git clone https://github.com/termuxhackers-id/instahack
echo -e "\n[info] installing module and requirements ...\n"
cd instahack && python3.10 -m pip install --upgrade pip && python3.10 -m pip install wheel && python3.10 -m pip install -r requirements.txt
echo -e "\n[info] remove all README.md from data directories ...\n"
find data/ -name '*.md' -delete
echo -e "\n[done] running 'ihack.py' to open instahack console ...\n"
python3.10 ihack.py
