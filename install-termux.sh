echo -e "\n[process] installing dependencies for instahack ...\n"
pkg up -y
pkg upgrade -y
echo -e "\n[process] installing package tur-repo ...\n"
pkg i -y tur-repo
echo -e "\n[process] installing package git, binutils, python3.10, build-essential ...\n"
pkg i -y git binutils python3.10 build-essential
echo -e "\n[process] cloning repository instahack ...\n"
git clone --depth 1 https://github.com/termuxhackers-id/instahack
cd instahack
echo -e "\n[process] checking for update ...\n"
git pull
echo -e "\n[process] upgrading pip3.10 (package python management) ...\n"
pip3.10 install --upgrade pip
echo -e "\n[process] installing requirements ...\n"
pip3.10 install -r requirements.txt
echo -e "\n[process] installing instahack wrapper ...\n"
pip3.10 install .
rm -rf build ihack.egg-info
find data/ -name '*.md' -delete
find . -name '*.jpg' -delete
echo -e "\n[success] run instahack with command: ihack\n"
