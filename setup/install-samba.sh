#!/bin/bash

#Description:
#This script is used to setup Samba on a Workstation
#References: 
#    https://www.linuxbabe.com/ubuntu/install-samba-server-file-share
#    
#Tested on Ubuntu 22.04

#Install Prerequisites - Ubuntu
sudo apt update

#Install Samba
sudo apt install samba -y

#Update Firewall to Allow Samba
sudo ufw allow samba

#Backup the Samba Config File
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf_backup
sudo bash -c 'grep -v -E "^#|^;" /etc/samba/smb.conf_backup | grep . > /etc/samba/smb.conf'


#Create User
#sudo adduser chamilton-smb

#Add User to Samba Users
#sudo smbpasswd -a chamilton-smb

#Create Samba Group
#sudo groupadd samba

#Add User to Samba Group
#sudo gpasswd -a chamilton-smb samba

#Set the Permissions
#sudo setfacl -R -m "g:samba:rwx" /data/Files/

#Add User to Group
#sudo usermod -a -G chamilton chamilton-smb

#Start the Samba Services
sudo systemctl start smbd nmbd

