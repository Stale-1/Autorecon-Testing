#!/bin/bash

echo "Uninstalling Auto-Reconnect Manager"
echo ""
echo "Press CTRL + C to Cancel"
echo ""
sleep 1 && echo "Starting in 4"
sleep 1 && echo "Starting in 3"
sleep 1 && echo "Starting in 2"
sleep 1 && echo "Starting in 1"
#
clear && echo "Uninstalling..."
rm /etc/profile.d/script.sh
rm /etc/cron.d/cron_stale
rm /root/autorecon.sh
rm /root/.stale.sh
rm /root/menu.sh
rm /root/.port.sh
rm /root/.time.sh
rm /root/.kill.sh
rm /root/.sleep.sh
clear
echo "Auto-Reconnect Manager Uninstalled Successfully"
echo ""
echo "Rebooting your Maching in 3"
sleep 1
echo "Rebooting your Maching in 2"
sleep 1
echo "Rebooting your Maching in 1"
sleep 1
reboot
