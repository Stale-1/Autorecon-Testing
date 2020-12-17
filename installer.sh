#!/bin/bash

apt update
apt install psmisc
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/banner.sh -O /etc/profile.d/script.sh
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/cron_stale -O /etc/cron.d/cron_stale
sleep 1 && /etc/init.d/cron restart && sleep 1 && systemctl enable cron
#
#
cd /root && wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/autorecon.sh && chmod +x autorecon.sh
cd /root && wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/.stale.sh && chmod +x .stale.sh
cd /root && echo "source ~/.stale.sh" >> .bashrc
cd /root && wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/menu.sh && chmod +x menu.sh
cd /root && wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/.port.sh
cd /root && wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/.time.sh
cp /root/.port.sh /root/.kill.sh && chmod +x .kill.sh
cp /root/.port.sh /root/.sleep.sh && chmod +x .sleep.sh
