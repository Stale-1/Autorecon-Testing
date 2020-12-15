#!/bin/bash

echo "Downloading necessary files"
apt update
apt install psmisc
mkdir /root/stale
clear
echo "Installing Menu for Autorecon"
sleep 1
echo "[#              ]"
clear
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/.stale.sh -O /root/.stale.sh && chmod +x .stale.sh
echo "[##             ]"
clear
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/autorecon/recon -O /root/stale.sh && chmod +x stale.sh
cd /root
echo "[###            ]"
clear
echo "source ~/.stale.sh" >> .bashrc
# /root/stale
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/menu/Mixed -O /root/stale/stale.sh
echo "[####           ]"
clear
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/autorecon/merge -O /root/stale/.merge.sh
echo "[#####          ]"
clear
cd /root/stale && chmod +x stale.sh
echo "[######         ]"
clear
cd /root/stale && chmod +x .merge.sh
echo "[#######        ]"
clear
# base port and time
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/menu/port/baseport -O /root/stale/.baseport
echo "[########       ]"
clear
cd /root/stale && cp .baseport .kill.sh
echo "[#########      ]"
clear
cd /root/stale && chmod +x .kill.sh
echo "[##########     ]"
clear
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/menu/timer/basetime -O /root/stale/.basetime
echo "[###########    ]"
clear
cd /root/stale && cp .basetime .sleep.sh
echo "[############   ]"
clear
cd /root/stale && chmod +x .sleep.sh
# banner
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/banner.sh -O /etc/profile.d/script.sh
echo "[#############  ]"
clear
# cron
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/Stale_cron -O /etc/cron.d/stale_cron
echo "[############## ]"
clear
/etc/init.d/cron start && systemctl enable cron
echo "[###############]"
clear
echo "Tasks Finished!!!"
clear
echo "Rebooting in 3"
sleep 1
echo "Rebooting in 2"
sleep 1
echo "Rebooting in 1"
sleep 1
reboot
