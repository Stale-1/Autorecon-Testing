#!/bin/bash

clear
  echo "===================="
  echo "===DROPBEAR PORTS==="
  echo "===================="
  echo ""
  echo "What is your current Dropbear port?"
  echo ""
  echo -e "Enter your dropbear port or x to exit \c"
  read -r n
  case $n in
    $n) cp /root/stale/.baseport /root/stale/.kill.sh
        sed -i "s/base/$n/g" /root/stale/.kill.sh;;
     x) exit;;
  esac
