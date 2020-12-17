#!/bin/bash

echo "Downloading Necessary Files"
apt update
apt install psmisc
clear
echo "Starting to Install Autorecon Manager"
echo "Press CTRL + C to cancel Installation"
sleep 5
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/banner.sh -O /etc/profile.d/script.sh
wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/cron_stale -O /etc/cron.d/cron_stale
sleep 1 && /etc/init.d/cron restart && sleep 1 && systemctl enable cron
#
#
echo "[#        ]" && clear
cd /root && wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/autorecon.sh && chmod +x autorecon.sh
echo "[##       ]" && clear
cd /root && wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/.stale.sh && chmod +x .stale.sh
echo "[###      ]" && clear
cd /root && echo "source ~/.stale.sh" >> .bashrc
source ~/.stale.sh
source ~/.bashrc
echo "[####     ]" && clear
cd /root && wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/menu.sh && chmod +x menu.sh
echo "[#####    ]" && clear
cd /root && wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/.port.sh
echo "[######   ]" && clear
cd /root && wget -q https://raw.githubusercontent.com/Stale-1/Autorecon-Testing/main/.time.sh
echo "[#######  ]" && clear
cp /root/.port.sh /root/.kill.sh && chmod +x .kill.sh
echo "[######## ]" && clear
cp /root/.port.sh /root/.sleep.sh && chmod +x .sleep.sh
echo "[#########]" && clear
#
echo "Installation Completed"
echo "Enter the Command love_stale to open autorecon menu"
echo ""
echo "If an error occur like COMMAND NOT FOUND"
echo "Reboot your Machine and it should work properly"
