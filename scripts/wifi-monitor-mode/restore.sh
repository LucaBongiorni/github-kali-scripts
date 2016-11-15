#!/bin/bash

#user config below
monitor=wlan0mon
network=wlan0

ifconfig $monitor down
iwconfig $monitor mode monitor
ifconfig $monitor up
airmon-ng stop $monitor
service network-manager restart
ifconfig $network down
ifconfig $network up
