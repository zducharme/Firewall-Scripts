## Zachary Ducharme 11/6/19
## Script to backup Firewall/Iptables settings.
##

#!/bin/bash
sudo iptables-save > iptablesbackup.txt
