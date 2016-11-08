#!/bin/bash
#Check Disk Space 
#ssh-copy-id -p port user@ip

echo '192.168.51.194  -----------------------------' 
ssh oracle@192.168.51.194 -p 5194 df -h | grep "36G" | grep -v "/home"

echo ''
echo '192.168.51.193  -----------------------------' 
ssh oracle@192.168.51.193 -p 5193 df -h | grep "36G" | grep -v "/home"

echo ''
echo '192.168.51.192  -----------------------------' 
ssh oracle@192.168.51.192 -p 5192 df -h | grep "36G" | grep -v "/home"

echo ''
echo '192.168.51.191  -----------------------------' 
ssh oracle@192.168.51.191 -p 5191 df -h | grep "36G" | grep -v "/home"

echo ''
echo '192.168.51.55   -----------------------------'
ssh -p 1355 root@192.168.51.55 df -h | grep "[3|1][5|4][9|5]G"

echo ''
echo '192.168.51.59   -----------------------------'
ssh -p 1359 root@192.168.51.59 df -h | grep "[3|1][5|4][9|5]G"

#exit 0
