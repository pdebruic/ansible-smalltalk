#!/bin/bash
#rm /opt/scripts/topaz.log
#touch /opt/scripts/topaz.log
source {{gemstone_config}}
cat /opt/scripts/topazSeasideLoadScript.st | topaz -l -T200000 #2>&1 >> /opt/scripts/topaz.log
exit 0
