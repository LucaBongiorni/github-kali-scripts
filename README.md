# kali-scripts

Random scripts for use in the Kali Linux Distro.  Feel free to modify scripts for your application(May need to replace wlan0 with wlan1, etc).

Clone the repo

cd scripts

chmod 755 *.sh

./mac-spoof.sh
Uses macchanger to spoof eth0's and wlan0's MAC address to a random address

./mac-restore.sh
Uses macchanger to restore eth0's and wlan0's MAC address

./wifi-mon-restore.sh
After running your WiFi interface in monitor mode with aircrack-ng this script will restore your network.