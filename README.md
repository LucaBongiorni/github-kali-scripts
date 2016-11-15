# kali-scripts
<pre>
Random scripts for use in the Kali Linux Distro.  Feel free to modify the scripts for your particular application.  I will try to use variables where I can to make it simple to configure the scripts.  These are not 100% the best way to do something but just what works primarily for my personal use.  I mainly make these for reference when I find I have to use an odd work around.  For example now with macchanger after spoofing your MAC address you have to add your gateway back in.

Clone the repo

cd kali-scripts

cd scripts

chmod 755 ./*.sh

chmod 755 ./*/*.sh

python pinbrute.py -c '0123456789' -l 6
python pinbrute.py -c '0123456789' -l 6 > pins.txt
Tool for calculating sequences to brute force pin based passwords of a fixed length.  For example a door requires setting a 6 digit pin with available character set of 0-9.  You would set the character set with -c '0123456789' and the length with -l 6.

python debruijn.py -c '0123456789' -m 3
Calculate de Bruijn sequence for a specific character set and subsequence.  Specify the character set with -c 'characters' and the max length of the subsequence with -m # as in above example.

./printerspam.sh
Causes a networked printer with port 9100 open to print your message line by line.

./volume.sh
Set speaker volume through script.

./mac-spoofing/spoof.sh
Uses macchanger to spoof eth's and wlan's MAC address to a random address

./mac-spoofing/restore.sh
Uses macchanger to restore eth's and wlan's MAC address

./wifi-monitor-mode/net-fix.sh
Runs "service network-manager restart" after you have set monitor mode so you can use a second network adapter with the Wireless GUI for network access.

./wifi-monitor-mode/restore.sh
After running your WiFi interface in monitor mode with aircrack-ng this script will restore your network adapters.
</pre>
