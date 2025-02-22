#!/usr/bin/bash

W="\033[0m"
R="\033[31m"
B="\033[34m"
G="\033[32m"
Y="\033[33m"

folder="instahack"

termux() {
    echo
    echo -e "${W}[ ${B}INFO${W} ] ${G}INSTAHACK${W}: running installer for termux ..."
    echo -e "${W}[ ${B}INFO${W} ] ${G}INSTAHACK${W}: running update and upgrade package ..."
    echo
    pkg update -y
    pkg upgrade -y
    echo
    echo -e "${W}[ ${B}INFO${W} ] ${G}INSTAHACK${W}: installing ${Y}tur-repo${W} ..."
    echo
    pkg i -y tur-repo
    echo
    echo -e "${W}[ ${B}INFO${W} ] ${G}INSTAHACK${W}: installing ${Y}git${W}, ${Y}python3.10${W} ..."
    echo
    pkg i -y git python3.10 binutils build-essential
    echo
    echo -e "${W}[ ${B}INFO${W} ] ${G}INSTAHACK${W}: cloning github repository ..."
    echo
    if [ -d $folder ]; then
        mv $folder "${folder}-backup"
    fi
    git clone --depth 1 https://github.com/termuxhackers-id/instahack
    echo
    echo -e "${W}[ ${B}INFO${W} ] ${G}INSTAHACK${W}: upgrading ${Y}pip3.10${W} ..."
    echo
    python3.10 -m pip install --upgrade pip
    echo
    echo -e "${W}[ ${B}INFO${W} ] ${G}INSTAHACK${W}: install ${Y}requirements.txt${W} with pip3.10 ..."
    echo
    cd $folder
    python3.10 -m pip install -r requirements.txt
    echo
    echo -e "${W}[ ${B}INFO${W} ] ${G}INSTAHACK${W}: install ${Y}ihack${W} with setuptools ..."
    echo
    python3.10 -m pip install .
    echo
    echo -e "${W}[ ${B}INFO${W} ] ${G}INSTAHACK${W}: cleaning cache after build ${Y}setup.py${W} ..."
    [ -d build ] && rm -rf build
    [ -d ihack.egg-info ] && rm -rf ihack.egg-info
    find . -name "*.jpg" -delete
    find . -name "*.md" -delete
    echo
    if [ -f /data/data/com.termux/files/usr/bin/ihack ]; then
        echo -e "${G}INSTALLATION SUCCESS${W}"
        echo
        python3.10 -m pip show ihack
        echo
        echo -e "${W}now you can run instahack with command: ${G}ihack${W}"
        echo
    else
        echo -e "${R}INSTALLATION FAILED${W}"
        echo
    fi
}

linux() {
    echo
    echo -e "${W}[ ${B}INFO${W} ] ${G}INSTAHACK${W}: running installer for linux ..."
    echo -e "${W}[ ${B}INFO${W} ] ${G}INSTAHACK${W}: adding package repository ${Y}ppa:savoury1/python${W} ..."
    echo
    sudo apt-get install software-properties-common -y
    sudo add-apt-repository ppa:savoury1/python
    sudo apt update
    echo
    echo -e "${W}[ ${B}INFO${W} ] ${G}INSTAHACK${W}: installing ${Y}git${W}, ${Y}python3.10${W} ..."
    echo
    sudo apt-get install git -y
    sudo apt-get install python3.10 -y
    echo
    echo -e "${W}[ ${B}INFO${W} ] ${G}INSTAHACK${W}: cloning github repository ..."
    echo
    if [ -d $folder ]; then
        mv $folder "${folder}-backup"
    fi
    git clone --depth 1 https://github.com/termuxhackers-id/instahack
    echo
    echo -e "${W}[ ${B}INFO${W} ] ${G}INSTAHACK${W}: upgrading ${Y}pip3.10${W} ..."
    echo
    python3.10 -m pip install --upgrade pip
    echo
    echo -e "${W}[ ${B}INFO${W} ] ${G}INSTAHACK${W}: install ${Y}requirements.txt${W} with pip3.10 ..."
    echo
    cd $folder
    python3.10 -m pip install -r requirements.txt
    echo
    echo -e "${W}[ ${B}INFO${W} ] ${G}INSTAHACK${W}: install ${Y}ihack${W} with setuptools ..."
    echo
    python3.10 -m pip install .
    echo
    echo -e "${W}[ ${B}INFO${W} ] ${G}INSTAHACK${W}: cleaning cache after build ${Y}setup.py${W} ..."
    [ -d build ] && rm -rf build
    [ -d ihack.egg-info ] && rm -rf ihack.egg-info
    find . -name "*.jpg" -delete
    find . -name "*.md" -delete
    echo
    if command -v ihack &> /dev/null; then
        echo -e "${G}INSTALLATION SUCCESS${W}"
        echo
        python3.10 -m pip show ihack
        echo
        echo -e "${W}now you can run instahack with command: ${G}ihack${W}"
        echo
    else
        echo -e "${R}INSTALLATION FAILED${W}"
        echo
    fi
}

if command -v termux-change-repo &> /dev/null; then
    termux
else
    linux
fi
