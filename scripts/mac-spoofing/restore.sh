#!/bin/bash
#add your default gateway that you normally use so you don't have to manually type it everytime you want to spoof your MAC address

defaultgateway='192.168.1.1'
ethernet=eth0
wireless=wlan0

echo 'Restoring '$ethernet' MAC'
ifconfig $ethernet down
macchanger $ethernet -p
ifconfig $ethernet up
echo''
echo 'Restoring '$wireless' MAC'
ifconfig $wireless down
macchanger $wireless -p
ifconfig $wireless up
echo ''

#read -e -i $defaultgateway -p 'Please Enter Default Gateway: ' gateway
#comment read line above and uncomment gateway line below to elimnate user input
gateway=$defaultgateway

echo $gateway' added as Default Gateway'
route add default gw $gateway
echo ''
echo 'Done.'
