```text
    _____           _                         _
    \_   \_ __  ___| |_ __ _  /\  /\__ _  ___| | __
     / /\/ `_ \/ __| __/ _` |/ /_/ / _` |/ __| |/ /
  /\/ /_ | | | \__ \ || (_| / __  / (_| | (__|   <  @v3.0.0
  \____/ |_| |_|___/\__\__,_\/ /_/ \__,_|\___|_|\_\

  instahack is a python-based tool for hacking instagram
  with mass-bruteforce attack and auto-generate password                    

  instahack > ?                                        
```
<img title="INSTAHACK" src="https://img.shields.io/badge/CODENAME%20-INSTAHACK-SCRIPT?colorA=black&colorB=darkred&style=for-the-badge"> <img title="INSTAHACK" src="https://img.shields.io/badge/VERSION%20-3.0.0-SCRIPT?colorA=black&colorB=darkred&style=for-the-badge"> 

Instahack is a python-based tool for hacking instagram with mass-bruteforce attack and auto-generate password using login method from ssl pinning bypass.

[![Watch the video](https://img.shields.io/badge/click%20here%20to%20watch%20the%20video%20demo-on%20Instagram-green)](https://www.instagram.com/reel/C3xwsykhHUY/?igsh=cDNqNHIzb2hnZ2dn)

<i>this tool is available for termux android.</i>

### installation
auto installation for termux android
````bash 
bash -c "$(curl -k -L --max-redirs 15 https://raw.githubusercontent.com/termuxhackers-id/INSTAHACK/main/install.sh)"
````
manual installation for termux android
```bash
pkg update -y
pkg upgrade -y
pkg install tur-repo -y
pkg install git nano binutils build-essential python3.10 -y
echo 'alias python3="python3.10"' >> $PREFIX/etc/bash.bashrc
echo 'alias pip="python3.10 -m pip"' >> $PREFIX/etc/bash.bashrc
source $PREFIX/etc/bash.bashrc
git clone https://github.com/termuxhackers-id/instahack
cd instahack
python3.10 -m pip install --upgrade pip
python3.10 -m pip install wheel
python3.10 -m pip install -r requirements.txt
find data/ -name '*.md' -delete
```
running instahack
```bash
python3.10 ihack.py
```
### requires
- license key (paid)
- instagram cookies (cookiedough)

### what's new ?
latest update instahack ```@v3.0.0```
- update proxy scraper and rotator
- update headers for login methods
- update useragent for instagram

### contributes
- code by [@iqbalmh18](https://instagram.com/iqbalmh18)
- obfuscator by [@KangProf](https://github.com/KangProf)
