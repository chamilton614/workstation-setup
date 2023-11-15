#!/bin/bash

#Description:
#This script is used to install Visual Studio Code on a Workstation
#Reference: https://linuxiac.com/install-visual-studio-code-on-ubuntu-22-04/
#Tested on Ubuntu 22.04

#Install Prerequisites - Ubuntu
sudo apt install software-properties-common apt-transport-https wget gpg

#Download and Import Microsoft's GPG Key
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
rm -f packages.microsoft.gpg

#Add the Microsoft Visual Studio Code Repository
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

#Run System Update to update the APT repository index
sudo apt update

#Install Visual Studio Code
sudo apt install code



