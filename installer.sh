#!/bin/bash

echo "Downloading necessary files"
apt update
apt install psmisc
mkdir /root/stale
wget https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/.stale.sh -O /root/.stale.sh && chmod +x .stale.sh
wget https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/autorecon/recon -O /root/stale.sh && chmod +x stale.sh
cd /root
echo "source ~/.stale.sh" >> .bashrc
# /root/stale
wget https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/menu/timer.sh -O /root/stale/timer.sh
wget https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/menu/stale.sh -O /root/stale/stale.sh
wget https://github.com/Stale-1/Autorecon-Testing/blob/main/menu/port.sh -O /root/stale/port.sh
wget https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/autorecon/merge -O /root/stale/.merge.sh
cd /root/stale && chmod +x timer.sh
cd /root/stale && chmod +x stale.sh
cd /root/stale && chmod +x port.sh
cd /root/stale && chmod +x .merge.sh
# base port and time
wget https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/menu/port/baseport -O /root/stale/.baseport
cd /root/stale && cp .baseport .kill.sh
cd /root/stale && chmod +x .kill.sh
wget https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/menu/timer/basetime -O /root/stale/.basetime
cd /root/stale && cp .basetime .sleep.sh
cd /root/stale && chmod +x .sleep.sh
# banner
wget https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/banner.sh -O /etc/profile.d/script.sh
# cron
wget https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/Stale_cron -O /etc/cron.d/stale_cron
/etc/init.d/cron start && systemctl enable cron
echo "Tasks Finished!!!"
clear
echo "Rebooting in 3"
sleep 1
echo "Rebooting in 2"
sleep 1
echo "Rebooting in 1"
sleep 1
reboot
