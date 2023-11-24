#!/bin/bash

#Description:
#This script is used to setup an rsync backup on a Workstation
#References: 
#    https://www.howtogeek.com/135533/how-to-use-rsync-to-backup-your-data-on-linux/
#    https://ostechnix.com/backup-entire-linux-system-using-rsync/
#Tested on Ubuntu 22.04

#Install Prerequisites - Ubuntu
sudo apt update

#Install rsync
sudo apt install rsync -y

#Source Directory to Backup
SOURCE_DIR=/data2/home/chamilton/

#Destination Directory to Save Backup
DESTINATION_DIR=/data/backups/data2-home-chamilton/

#Rsync Options
RSYNC_OPTIONS_1=-ravhP
RSYNC_OPTIONS_2=--delete

#Rsync Command
rsync ${RSYNC_OPTIONS_1} ${RSYNC_OPTIONS_2} ${SOURCE_DIR} ${DESTINATION_DIR}

#Cron Job Option - manual setup
#crontab -e
#0 2 * * * rsync -ravhP --delete /data2/home/chamilton/ /data/backups/data2-home-chamilton/





