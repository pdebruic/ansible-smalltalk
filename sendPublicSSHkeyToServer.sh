#!/bin/bash
# use this to wipe the known ssh keys for the ip and domain
IP=127.0.0.1
DOMAIN=localhost
ssh-keygen -R $IP
ssh-keygen -R DOMAIN
#echo root@$IP
#echo root@$DOMAIN
./ssh-copy-id.sh -i ~/.ssh/id_rsa.pub root@$IP
./ssh-copy-id.sh -i ~/.ssh/id_rsa.pub root@$DOMAIN

