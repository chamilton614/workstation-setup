#!/bin/bash

#Description:
#This script is used to install Pulse Audio on a Workstation
#Reference: https://itslinuxfoss.com/install-pulseaudio-ubuntu-22-04/
#Tested on Ubuntu 22.04

#Run System Update to update the APT repository index
sudo apt update

#Install Pulse Audio
sudo apt install pulseaudio -y

#Install Pulse Audio GUI Volume Control
sudo apt install pavucontrol -y



