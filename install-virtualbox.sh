#!/bin/bash

#Description:
#This script is used to install Virtualbox on a Workstation
#Reference: https://linuxiac.com/how-to-install-virtualbox-on-ubuntu-22-04/
#Tested on Ubuntu 22.04

#Install Prerequisites - Ubuntu
sudo apt update
sudo apt install software-properties-common apt-transport-https wget gpg

#Download and Import Virtualbox's GPG Key
wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg

#Add the Virtualbox Repository
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

#Run System Update to update the APT repository index
sudo apt update

#Install Virtualbox
sudo apt install virtualbox-7.0

#Install Virtualbox Extension Pack
wget https://download.virtualbox.org/virtualbox/7.0.2/Oracle_VM_VirtualBox_Extension_Pack-7.0.2.vbox-extpack
sudo vboxmanage extpack install Oracle_VM_VirtualBox_Extension_Pack-7.0.2.vbox-extpack -y

#Add Current User to the Virtualbox group
sudo usermod -a -G vboxusers $USER


