#!/bin/bash

clear
while true
do
  echo "===================="
  echo "===DROPBEAR PORTS==="
  echo "===================="
  echo ""
  echo "What is your current Dropbear port?"
  echo ""
  echo "1) 80"
  echo "2) 143"
  echo "3) 442"
  echo "4) 443"
  echo "5) 550"
  echo "6) 555"
  echo "0) Exit"
  echo -e "Enter your current dropbear port \c"
  read -r answer
  case "$answer" in
    1) wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/menu/port/80 -O /root/stale/.kill.sh && exit && clear ;;
    2) wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/menu/port/143 -O /root/stale/.kill.sh && exit && clear ;;
    3) wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/menu/port/442 -O /root/stale/.kill.sh && exit && clear ;;
    4) wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/menu/port/443 -O /root/stale/.kill.sh && exit && clear ;;
    5) wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/menu/port/550 -O /root/stale/.kill.sh && exit && clear ;;
    6) wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/menu/port/555 -O /root/stale/.kill.sh && exit && clear ;;
    0) exit && 0 ;;
  esac
done
