#!/bin/bash

while true
do
  echo "===================="
  echo "AUTO-RECONNECT TIMER"
  echo "===================="
  echo ""
  echo "How many seconds before reconnection?"
  echo -e "Enter your preferred interval(1-60) \c"
  read answer
  case "$answer" in
    1) echo "You chose 1" ;;
    2) echo "You chose 2" ;;
    3) echo "You chose 2" ;;
    q) exit ;;
  esac
done
