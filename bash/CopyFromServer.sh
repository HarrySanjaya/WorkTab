#!/bin/bash
#untuk pengambilan backup di jkt

DATE=`date -d "yesterday" +%Y%m%d`
FILENAME='bckcollall'$DATE'.7z'

#sudo apt-get install sshpass kalau pakai sshpass
#test/ folder tujuan

#sshpass -p ***** ssh -p 55133 root@192.168.0.3

scp -P55133 root@192.168.0.3:/disk1/bckitc/$FILENAME test/ 

exit 0
