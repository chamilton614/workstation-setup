#!/bin/bash

#Description:
#This script is used to install MS Edge on a Workstation
#Reference: https://www.omgubuntu.co.uk/2021/01/how-to-install-edge-on-ubuntu-linux
#Tested on Ubuntu 22.04

#Install Prerequisites - Ubuntu
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common

#Download and Import Microsoft's GPG Key
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
rm -f microsoft.gpg

#Add the Microsoft Edge Repository
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'

#Run System Update to update the APT repository index
sudo apt update

#Install MS Edge
sudo apt install microsoft-edge-stable -y

