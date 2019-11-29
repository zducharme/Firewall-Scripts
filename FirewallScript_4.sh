#
## Firewall rule for allowing/denying incoming SMTP/POP/IMAP connections.
##

#!/bin/bash
sudo iptables -A INPUT -p tcp --match multiport --dport 25,587 -j ACCEPT
sudo iptables -A INPUT -p tcp --match multiport --dport 110,995 -j ACCEPT
sudo iptables -A INPUT -p tcp --match multiport --dport 143,993 -j ACCEPT
