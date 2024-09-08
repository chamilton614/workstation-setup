#!/bin/bash

#Description:
#This script is used to install VLC on a Workstation
#Reference: https://linuxconfig.org/ubuntu-22-04-vlc-installation
#Tested on Ubuntu 22.04

#Install Prerequisites - Ubuntu
sudo apt update

#Add the VLC PPA Repository
sudo add-apt-repository --yes --update ppa:videolan/master-daily

#Run System Update to update the APT repository index
sudo apt update

#Install VLC
sudo apt install vlc -y

#Install Extra Plugins and Additional Multimedia Formats
sudo apt install vlc-plugin-access-extra libbluray-bdj libdvd-pkg -y



