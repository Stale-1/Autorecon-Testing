# Auto-Reconnect-of-Dropbear


1) Run this Command
$ wget https://raw.githubusercontent.com/Stale-1/Auto-Reconnect-of-Dropbear/main/installer.sh && chmod +x installer.sh && ./installer.sh

2) Open Crontab
$ crontab -e

3) Then add this line and save
@reboot /root/./stale.sh

4) Restart and enable crontab at boot
/etc/init.d/cron restart && systemctl enable cron

5) Reboot
$ reboot


Created by Stale
PHCorner.net

