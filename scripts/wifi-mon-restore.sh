#!/bin/bash
ifconfig wlan0mon down
iwconfig wlan0mon mode monitor
ifconfig wlan0mon up
airmon-ng stop wlan0mon
service network-manager restart
