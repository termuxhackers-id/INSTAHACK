```text
    _____           _                         _
    \_   \_ __  ___| |_ __ _  /\  /\__ _  ___| | __
     / /\/ `_ \/ __| __/ _` |/ /_/ / _` |/ __| |/ /
  /\/ /_ | | | \__ \ || (_| / __  / (_| | (__|   <  @v2.0.5
  \____/ |_| |_|___/\__\__,_\/ /_/ \__,_|\___|_|\_\

  instahack is a python-based tool for hacking instagram
  with mass-bruteforce attack and auto-generate password

  (github) https://github.com/termuxhackers-id/instahack              
  type ? or help to show all commands - (15/01/2024)

  @ihack:~$                                           
```
<img title="INSTAHACK" src="https://img.shields.io/badge/CODENAME%20-INSTAHACK-SCRIPT?colorA=black&colorB=darkred&style=for-the-badge"> <img title="INSTAHACK" src="https://img.shields.io/badge/VERSION%20-2.0.5-SCRIPT?colorA=black&colorB=darkred&style=for-the-badge"> 

Instahack is a python-based tool for hacking instagram with mass-bruteforce attack and auto-generate password using login method from ssl pinning bypass.

<i>this tool is available for termux android.</i>

### authentication
login with instagram cookies

![@v2.0.5](https://raw.githubusercontent.com/termuxhackers-id/INSTAHACK/main/v2.0.5.gif)

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
find . -name '*.md' -delete
```
running instahack
```bash
python3 ihack.py
```
### requires
- license key (paid)
- instagram cookies (cookiedough)

### what's new ?
latest update instahack ```@v2.0.5```
- add new login method (ajax,lite,threads)
- add new display

### contributes
- code by [@iqbalmh18](https://instagram.com/iqbalmh18)
- obfuscator by [@KangProf](https://github.com/KangProf)
