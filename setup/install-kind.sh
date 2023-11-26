#!/bin/bash

#Description:
#This script is used to install kind on a Workstation
#Reference: https://kind.sigs.k8s.io/docs/user/quick-start
#Tested on Ubuntu 22.04

#Install Prerequisites - Ubuntu
sudo apt update

#Download the Package
[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64

#Install kind
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

#Output the kind version
kind version

