#!/bin/bash

#Description:
#This script is used to install Skype on a Workstation
#Reference: https://linuxhint.com/install_skype_ubuntu_2204/
#Tested on Ubuntu 22.04

#Install Prerequisites - Ubuntu
sudo apt update

#Download the Package
wget https://repo.skype.com/latest/skypeforlinux-64.deb

#Install Skype
sudo dpkg -i skypeforlinux-64.deb


