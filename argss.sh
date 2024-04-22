#!/bin/bash
C=""
if [ $1 -eq 217 ]; then
  C="-c aes256-cbc"
fi

IP=192.168.1.$1
sshpass -p ogretmen ssh $C ogretmen@$IP "bash -c 'export DISPLAY=:1;scrot -z /tmp/aaaaa.jpg ; base64 /tmp/aaaaa.jpg'" | base64 -d | imvr -
