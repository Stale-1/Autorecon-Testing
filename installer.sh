#!/bin/bash

apt update
apt install psmisc
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/banner.sh -O /etc/profile.d/script.sh
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/cron_stale -P /etc/cron.d/


cd /root
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/.stale.sh
echo "source ~/.stale.sh" >> .bashrc
https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/menu.sh
