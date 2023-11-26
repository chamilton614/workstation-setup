


#!/bin/bash

#Description:
#This script is used to install Skype on a Workstation
#Reference: https://go.dev/doc/install
#Tested on Ubuntu 22.04

#Install Prerequisites - Ubuntu
sudo apt update

#Download the Package
wget https://go.dev/dl/go1.21.4.linux-amd64.tar.gz

#Remove Previous Go Installations
sudo rm -rf /usr/local/go

#Install Go
sudo tar -C /usr/local -xzf go1.21.4.linux-amd64.tar.gz

#Update User's .profile
echo "#Custom PATH entries" >> ~/.profile
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
source ~/.profile

#Remove Downloaded Files
rm -f go1.21.4.linux-amd64.tar.gz
