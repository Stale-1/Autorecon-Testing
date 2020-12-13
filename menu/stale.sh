#!/bin/bash

clear
while true
do
  echo "===================="
  echo "==Created by Stale=="
  echo "===================="
  echo "====PHCorner.net===="
  echo "===================="
  echo ""
  echo "What do you want to do?"
  echo "1) Configure autorecon for your dropbear port."
  echo "2) Change Autorecon Interval."
  echo "0) Exit"
  echo ""
  echo ""
  echo -e "Enter your response \c"
  read answer
  case "$answer" in
    1) /root/stale/./port.sh ;;
    2) /root/stale/./timer.sh ;;
    0) exit ;;
  esac
done
