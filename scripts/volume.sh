#!/bin/bash
#be sure you went through steps to enable sound first as Kali ships with it disabled

#Choose if default is mute or 100%
defaultvolume=0
#defaultvolume=100

read -e -i $defaultvolume -p 'Please Enter Volume 0-100: ' volume
amixer sset Master $volume'%'
xset b off
