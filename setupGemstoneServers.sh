#!/bin/bash
# if you want verbose logging add -vvvv the end of the run command
ansible-playbook prepServer.yml -u root "$@"
# at the end of the prep playbook the servers are rebooted so we will wait a bit before installing Gemstone
sleep 60
ansible-playbook installGemstone.yml -u deploy "$@"
