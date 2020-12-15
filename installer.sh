#!/bin/bash

echo "Downloading necessary files"
apt update
apt install psmisc
mkdir /root/stale
clear
echo "Installing Menu for Autorecon"
sleep 1
echo "[#              ]"
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/.stale.sh -O /root/.stale.sh && chmod +x .stale.sh
clear
echo "[##             ]"
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/autorecon/recon -O /root/stale.sh && chmod +x stale.sh
cd /root
clear
echo "[###            ]"
echo "source ~/.stale.sh" >> .bashrc
# /root/stale
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/menu/Mixed -O /root/stale/stale.sh
clear
echo "[####           ]"
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/autorecon/merge -O /root/stale/.merge.sh
clear
echo "[#####          ]"
cd /root/stale && chmod +x stale.sh
clear
echo "[######         ]"
cd /root/stale && chmod +x .merge.sh
clear
echo "[#######        ]"
# base port and time
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/menu/port/baseport -O /root/stale/.baseport
clear
echo "[########       ]"
cd /root/stale && cp .baseport .kill.sh
clear
echo "[#########      ]"
cd /root/stale && chmod +x .kill.sh
clear
echo "[##########     ]"
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/menu/timer/basetime -O /root/stale/.basetime
clear
echo "[###########    ]"
cd /root/stale && cp .basetime .sleep.sh
clear
echo "[############   ]"
cd /root/stale && chmod +x .sleep.sh
# banner
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/banner.sh -O /etc/profile.d/script.sh
clear
echo "[#############  ]"
# cron
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/Stale_cron -O /etc/cron.d/stale_cron
clear
echo "[############## ]"
/etc/init.d/cron start && systemctl enable cron
clear
echo "[###############]"
echo "Tasks Finished!!!"
clear
echo "Autorecon Manager Successfully Installed"
echo "Please Reboot Your Machine"
