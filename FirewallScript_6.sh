##
## Script to backup Firewall/Iptables settings.
##

#!/bin/bash
sudo iptables-save > iptablesbackup.txt
