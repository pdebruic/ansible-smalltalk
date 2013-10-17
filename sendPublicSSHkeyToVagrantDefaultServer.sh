#!/bin/bash
# use this if you're using vagrant to run your vms locally
# it wipes and resets the ssh keys after you destroy and recreate a server
ssh-keygen -R 127.0.0.1:2222
ssh-keygen -R [127.0.0.1]:2222
ssh-keygen -R localhost:2222
ssh-keygen -R [localhost]:2222
./ssh-copy-id.sh -i ~/.ssh/id_rsa.pub "root@127.0.0.1 -p 2222" 
