#!/bin/bash
#add your default gateway that you normally use so you don't have to manually type it everytime you want to spoof your MAC address

defaultgateway='192.168.1.1'

echo 'Spoofing eth0 MAC'
ifconfig eth0 down
macchanger eth0 -r
ifconfig eth0 up
echo''
echo 'Spoofing wlan0 MAC'
ifconfig wlan0 down
macchanger wlan0 -r
ifconfig wlan0 up
echo ''
read -e -i $defaultgateway -p 'Please Enter Default Gateway: ' gateway
#comment read line above and uncomment gateway line below to elimnate user input
#gateway=$defaultgateway
echo $gateway' added as Default Gateway'
route add default gw $gateway
echo ''
echo 'Done.'
