#!/bin/bash

sudo groupadd sambashare

sudo useradd -M -d /srv/samba/secure -s /usr/sbin/nologin sambauser1
sudo usermod -aG sambashare sambauser1

echo "Set Linux password for sambauser1:"
sudo passwd sambauser1

echo "Set Samba password for sambauser1:"
sudo smbpasswd -a sambauser1
