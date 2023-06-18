#!/usr/bin/env python3
# -*- coding: utf-8 -*-
'''
WARNING
this file contains some configurations,
please don't change anything if you don't understand
python programming language!

copyright © 2023 by iqbalmh18 (https://instagram.com/iqbalmh18)
'''
# hex colors format
R='[#ff0408]'
G='[#02ff02]'
Y='[#df9201]'
B='[#3100f9]'
P='[#8e00f9]'
D='[#696969]'
W='[#cfcfcf]'
# instagram api url
API='https://i.instagram.com'
# instagram web url
WEB='https://www.instagram.com'
# data directories contains core, rest and user directories
DATADIR='data'
# core directories contains configuration files
COREDIR=DATADIR+'/core'
# user directories contains user license, session, user agent and etc
USERDIR=DATADIR+'/user'
# rest directories contains results files
RESTDIR=DATADIR+'/rest'
# session file contains instagram session (cookies and etc)
SESSIONFILE=USERDIR+'/session.json'
# license file contains license (key and expires date)
LICENSEFILE=USERDIR+'/license.json'
# results files stored in rest directories
RESULTSFILE=RESTDIR+'/{}.json'
# user agent files stored in user directories
USERAGENTFILE=USERDIR+'/{}.txt'
# ascii banner (.art) files
BANNERFILE=COREDIR+'/ihack.art'
# require python modules
try:
    import os, re, time, json, uuid, hmac, base64, random, hashlib, requests, datetime, urllib.request
    from rich import print
    from shutil import which
    from yaspin import yaspin
    from licensing.models import *
    from rich.console import Console
    from requests.exceptions import *
    from rich.progress import Progress
    from Cryptodome.PublicKey import RSA
    from licensing.methods import Key, Helpers
    from Cryptodome.Cipher import AES, PKCS1_v1_5
    from Cryptodome.Random import get_random_bytes
    from concurrent.futures import ThreadPoolExecutor
except (ImportError, ModuleNotFoundError):
    exit('run: python3 -m pip install -r requirements.txt')
# set default date format
DATE=time.strftime('%d%m%y')
# set default input with rich.console
input=Console().input 
# set default clear function
def clear(): os.system('cls' if os.name == 'nt' else 'clear')
# get free proxy from proxyscrape (socks4/socks5)
def proxies(sock):
    data=[]
    sock='socks4' if sock == 'socks4' else 'socks5'
    link='https://api.proxyscrape.com/v2/?request=displayproxies&protocol={}&timeout=100000&country=all&ssl=all&anonymity=all'
    resp=requests.get(link.format(sock),stream=True)
    for line in resp.iter_lines(): data.append(line.decode())
    return data