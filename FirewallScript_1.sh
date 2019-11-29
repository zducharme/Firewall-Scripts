##
## Firewall rule for opening web server ports; forwarded to port 8080.
##

#!/bin/bash
sudo iptables -t nat -A INPUT -p tcp --dport 80 -j REDIRECT --to-port 8080
sudo iptables -t nat -A OUTPUT -p tcp --dport 80 -j REDIRECT --to-port 8080
