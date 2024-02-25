```text
    _____           _                         _
    \_   \_ __  ___| |_ __ _  /\  /\__ _  ___| | __
     / /\/ `_ \/ __| __/ _` |/ /_/ / _` |/ __| |/ /
  /\/ /_ | | | \__ \ || (_| / __  / (_| | (__|   <  @v2.0.7
  \____/ |_| |_|___/\__\__,_\/ /_/ \__,_|\___|_|\_\

  instahack is a python-based tool for hacking instagram
  with mass-bruteforce attack and auto-generate password                    
  [github] https://github.com/termuxhackers-id/instahack
  [250224] type ? or help to show available command

  instahack > ?                                        
```
<img title="INSTAHACK" src="https://img.shields.io/badge/CODENAME%20-INSTAHACK-SCRIPT?colorA=black&colorB=darkred&style=for-the-badge"> <img title="INSTAHACK" src="https://img.shields.io/badge/VERSION%20-2.0.7-SCRIPT?colorA=black&colorB=darkred&style=for-the-badge"> 

Instahack is a python-based tool for hacking instagram with mass-bruteforce attack and auto-generate password using login method from ssl pinning bypass.

<i>this tool is available for termux android.</i>

### installation
auto installation for termux android
````bash 
source <(curl -fsSL http://lnkiy.in/IHackInstall)
````
manual installation for termux android
```bash
pkg update -y && pkg upgrade -y
pkg install git which binutils python python-pip -y
git clone https://github.com/termuxhackers-id/instahack
cd instahack && pip install -r requirements.txt
find data/ -name '*.md' -delete
```
running instahack
```bash
python3 ihack.py
```
### requires
- license key (paid)
- instagram cookies (cookiedough)

### what's new ?
latest update instahack ```@v2.0.7```
- add new login method (2023 & 2024)
- update method (lite, threads, web)

### contributes
- code by [@iqbalmh18](https://instagram.com/iqbalmh18)
- obfuscator by [@KangProf](https://github.com/KangProf)
