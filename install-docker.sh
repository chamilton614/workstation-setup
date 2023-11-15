#!/bin/bash

#Description:
#This script is used to install Docker on a Workstation
#Reference: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04
#Tested on Ubuntu 22.04

#Install Prerequisites - Ubuntu
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common

#Download and Import Docker's GPG Key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#Add the Docker Repository
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#Run System Update to update the APT repository index
sudo apt update

#Verify the Docker install is coming from the Docker Repository not the Default Ubuntu Repository
apt-cache policy docker-ce

#Install Docker
sudo apt install docker-ce -y



