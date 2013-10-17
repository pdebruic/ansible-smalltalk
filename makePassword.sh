#!/bin/bash
# use like this:
# ./makePassword.sh 1234
mkpasswd --method=sha-512 "$@"
