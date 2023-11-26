#!/bin/bash

#Description:
#This script is used to install kubectl on a Workstation
#Reference: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
#Tested on Ubuntu 22.04

#Install Prerequisites - Ubuntu
sudo apt update

#Download the Package
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

#Download the Package Checksum
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"

#Validate the Binary with the Checksum
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check

#Install kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

#Output the kubectl version
kubectl version --client

