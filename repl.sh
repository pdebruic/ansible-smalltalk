#!/bin/bash
     for fl in *; do
     mv $fl $fl.old
     sed 's/{{deploy_user}}/{{deploy_user}}/g' $fl.old > $fl
     rm -f $fl.old
     done
