#!/bin/bash

#Description:
#This script is used to install OBS on a Workstation
#Reference: https://www.linuxcapable.com/how-to-install-obs-studio-on-ubuntu-linux/
#Tested on Ubuntu 22.04

#Add the OBS PPA Repository
sudo add-apt-repository ppa:obsproject/obs-studio -y

#Run System Update to update the APT repository index
sudo apt update

#Install OBS
sudo apt install obs-studio -y



