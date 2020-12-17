#!/bin/bash

clear
  printf "\033[0;36m♡⃛◟( ˊ̱˂˃ˋ̱ )◞⸜₍ ˍ́˱˲ˍ̀ ₎⸝◟( ˊ̱˂˃ˋ̱ )◞♡⃛\033[0m\n"
  printf "\033[0;36m===========================\033[0m\n"
  printf "\033[34;1mWelcome!!!\033[0m\n"
  printf "\033[34;1mAuto-Reconnect Menu\033[0m\n"
  printf "\033[0;36m===========================\033[0m\n"
  printf "\033[34;1mStale | PHCorner.net\033[0m\n"
  printf "\033[0;36m===========================\033[0m\n"
  printf "\033[0;36m♪＼(*＾▽＾*)／＼(*＾▽＾*)／\033[0m\n"
  echo ""
  printf "\033[34;1mWhat do you want to do?\033[0m\n"
  echo ""
  echo "1) Configure autorecon for your dropbear port"
  echo "2) Change Autorecon Interval"
  echo "0) Exit"
  echo ""
  echo ""
  echo -e "Enter your response \c"
  read -r answer
  case "$answer" in
    1) clear
       echo "===================="
       echo "===DROPBEAR PORTS==="
       echo "===================="
       echo ""
       echo "What is your current Dropbear port?"
       echo ""
       echo -e "Enter your dropbear port or x to exit \c"
       read -r n
       case $n in
         $n) cp /root/.port.sh /root/.kill.sh
             sed -i "s/base/$n/g" /root/.kill.sh && cd /root && chmod +x .kill.sh && clear
             echo "Autorecon is successfully configured on dropbear port $n";;
          x) clear && exit;;
       esac ;;
    2) clear
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
         $n) cp /root/.time.sh /root/.sleep.sh
             sed -i "s/base/$n/g" /root/.sleep.sh && cd /root && chmod +x .sleep.sh && clear
             echo "Autorecon is now every $n seconds.";;
          x) clear && exit;;
       esac ;;
    0) exit ;;
  esac
