#!/bin/bash

clear
  echo "===================="
  echo "AUTO-RECONNECT TIMER"
  echo "===================="
  echo ""
  echo "How many seconds before reconnection?"
  echo ""
  echo ""
  echo -e "Enter your preferred interval(1-60) or x to exit \c"
  read -r n
  case $n in
    $n) cp /root/stale/.basetime /root/stale/.sleep.sh
        sed -i "s/base/$n/g" /root/stale/.sleep.sh;;
     x) exit;;
  esac
