#!/bin/bash

clear
while true
do
  echo "===================="
  echo "AUTO-RECONNECT TIMER"
  echo "===================="
  echo ""
  echo "How many seconds before reconnection?"
  echo ""
  echo "1) Every 30 seconds"
  echo "2) Every 35 seconds"
  echo "3) Every 40 seconds"
  echo "4) Every 45 seconds"
  echo "5) Every 50 seconds"
  echo "6) Every 55 seconds"
  echo "7) Every 60 seconds"
  echo "0) Exit"
  echo -e "Enter your preferred interval \c"
  read -r answer
  case "$answer" in
    1) wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/menu/timer/30 -O /root/stale/.sleep.sh && exit && clear ;;
    2) wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/menu/timer/35 -O /root/stale/.sleep.sh && exit && clear ;;
    3) wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/menu/timer/40 -O /root/stale/.sleep.sh && exit && clear ;;
    4) wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/menu/timer/45 -O /root/stale/.sleep.sh && exit && clear ;;
    5) wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/menu/timer/50 -O /root/stale/.sleep.sh && exit && clear ;;
    6) wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/menu/timer/55 -O /root/stale/.sleep.sh && exit && clear ;;
    7) wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/menu/timer/60 -O /root/stale/.sleep.sh && exit && clear ;;
    0) exit && clear ;;
  esac
done
