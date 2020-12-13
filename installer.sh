#!/bin/bash

echo "Downloading necessary files"
wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/menu/timer.sh -O /root/stale/timer.sh && chmod +x timer.sh
wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/menu/stale.sh -O /root/stale/stale.sh && chmod +x stale.sh
wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/menu/port.sh -O /root/stale/port.sh && chmod +x port.sh
wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/.stale.sh -O /root/.stale.sh && chmod +x .stale.sh
wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/.bash_aliases -O /root/.bash_aliases
wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/autorecon/recon -O /root/recon.sh && chmod +x recon.sh
echo "Tasks Finished!!!"
echo ""
echo "To configure the Autorecon"
echo "type "stale" then enter"
