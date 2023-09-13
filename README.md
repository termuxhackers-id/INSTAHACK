```text
  _____           _                         _
  \_   \_ __  ___| |_ __ _  /\  /\__ _  ___| | __
   / /\/ `_ \/ __| __/ _` |/ /_/ / _` |/ __| |/ /
/\/ /_ | | | \__ \ || (_| / __  / (_| | (__|   <
\____/ |_| |_|___/\__\__,_\/ /_/ \__,_|\___|_|\_\

© 2023 code by iqbalmh18 ( https://instagram.com/iqbalmh18 )
  advance tool for hacking an instagram accounts 🔐
  type ? or help to show available commands

❯
```
<img title="INSTAHACK" src="https://img.shields.io/badge/CODENAME%20-INSTAHACK-SCRIPT?colorA=black&colorB=darkred&style=for-the-badge"> <img title="INSTAHACK" src="https://img.shields.io/badge/VERSION%20-2.0.2-SCRIPT?colorA=black&colorB=darkred&style=for-the-badge"> 

Instahack is a CLI-based tool with the main function of guessing password vulnerabilities on Instagram accounts, with the bruteforce attack technique via Instagram Private Api. Instahack can carry out bruteforce attacks like a user logging in to an Android application.

This tool is only available for Termux Android users

### installation
Quick installation for Termux Android
````bash
pkg update -y && pkg upgrade -y && pkg install git nano wget python python-pip binutils -y && pip install wheel bs4 rich pytz pynacl requests licensing pycryptodomex && git clone --depth 1 https://github.com/termuxhackers-id/instahack && cd instahack && python3 ihack.py
````
### authentication 
Require instagram cookies, get your cookies with cookiedough (chrome extensions)
- [install cookiedough](https://chrome.google.com/webstore/detail/cookiedough)
### features
```text
(1) get username information (JSON results)
(2) bot automation for instagram (DM, Like, Follow, Comment)
(3) bruteforce password instagram (2 Method, 8 Options)
```
### video demo
Login with instagram cookies

[![demo1](https://asciinema.org/a/607724.svg)](https://asciinema.org/a/607724)

Dump followers and start bruteforce attacks

[![demo2](https://asciinema.org/a/607733.svg)](https://asciinema.org/a/607733)

<b>NOTE</b>: press ```CTRL + C``` to stop the dump process 

### what's new ?
Latest update instahack ```v2.0.2-stable```
- fix instagram update
- add windows useragent for ajax methods
### contributes
- code by [@iqbalmh18](https://instagram.com/iqbalmh18)
- obfuscator by [@KangProf](https://github.com/KangProf)

### MIT license
```text
MIT License

Copyright (c) 2023 Termux Hackers

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
