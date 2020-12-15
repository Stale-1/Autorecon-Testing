#!/bin/bash

clear
  echo "===================="
  echo "AUTO-RECONNECT TIMER"
  echo "===================="
  echo ""
  echo "How many seconds before reconnection?"
  echo "Enter x to exit"
  echo ""
  echo -e "Enter your preferred interval(1-60) \c"
  read -r n
  case $n in
    $n) cp /root/stale/.basetime /root/stale/.sleep.sh
        sed -i "s/base/$n/g" /root/stale/.sleep.sh;;
     x) exit;;
  esac
