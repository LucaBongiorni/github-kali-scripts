#common packages

#kali upgrade/full install
apt-get update
apt-get upgrade
apt-get dist-upgrade
apt-get install kali-linux-full

#version management
apt-get install git

#install nvidia drivers
apt-get install -y linux-headers-$(uname -r)
apt-get install nvidia-kernel-dkms
sed 's/quiet/quiet nouveau.modeset=0/g' -i /etc/default/grub
update-grub
apt-get install nvidia-opencl-icd
apt-get --reinstall install nvidia-driver bumblebee-nvidia
reboot
glxinfo | grep -i "direct rendering"
##should output - direct rendering: Yes

#sound
apt-get install alsa-utils alsamixergui

#printer
apt-get install cups cups-client foomatic-db

#xfce
apt-get install kali-defaults kali-root-login desktop-base xfce4 xfce4-places-plugin xfce4-goodies

#proxmark3 - packages required to compile it
apt-get install build-essential libreadline5 libreadline-dev gcc-arm-none-eabi libusb-0.1-4 libusb-dev libqt4-dev ncurses-dev perl pkg-config
#at some point gcc-arm-none-eabi was removed from the packages, if it doesn't get added back you may need to find it manually or try using the kali-snapshot repo in your sources list(was still in there for september-2016)

#rfcat gqrx gnuradio
apt-get install rfcat gqrx gnuradio
pip install bitstring

#dev boards/projects
apt-get install arduino fritzing

#virtualbox and screen cap/webcam software
apt-get install virtualbox gtk-recordmydesktop cheese gimp

#stuff needed for metasploit/hacking
apt-get install zipalign cupp ghex shellter wine32

##########
#install latest metasploit on kali

#dependencies
apt-get install zipalign
apt-get install libsqlite3-dev
apt-get install ruby-dev
apt-get install libpq-dev
apt-get install libxslt-dev libxml2-dev
apt-get install libpcap-dev

#clone and own
cd /opt
sudo git clone https://github.com/rapid7/metasploit-framework.git
sudo chown -R `whoami` /opt/metasploit-framework
cd metasploit-framework

#make
gem install bundler
bundle install

#make it available from any folder(optional)
sudo bash -c 'for MSF in $(ls msf*); do ln -s /opt/metasploit-framework/$MSF /usr/local/bin/$MSF;done'

#end install latest metasploit
#############

#free up some space
apt-get clean
#clear old logs that have been rotated or archived
find /var/log -type f -regex ".*\.gz$" -delete
find /var/log -type f -regex ".*\.[0-9]$" -delete
