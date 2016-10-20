# kali-scripts

Random scripts for use in the Kali Linux Distro.  Feel free to modify the scripts for your particular application.  I will try to use variables where I can to make it simple to configure the scripts.  These are not 100% the best way to do something but just what works primarily for my personal use.  I mainly make these for reference when I find I have to use an odd work around.  For example now with macchanger after spoofing your MAC address you have to add your gateway back in.

Clone the repo

cd kali-scripts

cd scripts

chmod 755 ./*/*.sh

./mac-spoofing/spoof.sh
Uses macchanger to spoof eth's and wlan's MAC address to a random address

./mac-spoofing/restore.sh
Uses macchanger to restore eth's and wlan's MAC address

./wifi-monitor-mode/net-fix.sh
Runs "service network-manager restart" after you have set monitor mode so you can use a second network adapter with the Wireless GUI for network access.

./wifi-monitor-mode/restore.sh
After running your WiFi interface in monitor mode with aircrack-ng this script will restore your network adapters.
