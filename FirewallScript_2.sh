##
## Firewall rule for allowing incoming MYSQL database connections.
##

#!/bin/bash
sudo iptables -A INPUT -p tcp --dport 3306 -j ACCEPT
