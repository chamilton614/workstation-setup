#!/bin/bash

#Description:
#This script is used to install IntelliJ on a Workstation
#Reference: https://www.jetbrains.com/help/idea/installation-guide.html#standalone
#Tested on Ubuntu 22.04

#Install Prerequisites - Ubuntu
sudo apt update
sudo apt install software-properties-common apt-transport-https wget gpg

#Remove Previous IntelliJ downloads
rm -f ~/Downloads/ideaIC-*

#Download IntelliJ
echo "Download Manually using this URL - https://www.jetbrains.com/idea/download/download-thanks.html?platform=linux&code=IIC"
echo "Hit Enter after Downloaded"
read somevalue

#Run System Update to update the APT repository index
sudo apt update

#Install IntelliJ
sudo tar -xzf /Downloads/ideaIC-*.tar.gz -C /opt



