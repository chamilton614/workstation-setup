#!/bin/bash

#Description:
#This script is used to install Ansible on a Workstation
#Reference: https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-22-04
#Tested on Ubuntu 22.04

#Install Prerequisites - Ubuntu
sudo apt update
sudo apt install software-properties-common

#Add the Ansible PPA Repository
sudo add-apt-repository --yes --update ppa:ansible/ansible

#Run System Update to update the APT repository index
sudo apt update

#Install Ansible
sudo apt install ansible -y



