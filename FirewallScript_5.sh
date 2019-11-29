#
## Allow/Block Specific Hosts (MAC, Telnet, ICMP... EX. Port = 1996 )
##

#!/bin/bash
sudo iptables -A INPUT -p tcp --dport 1996 -m mac --mac-source 00:0F:EA:91:04:07 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 1996 -m mac --mac-source 00:0F:EA:91:04:07 -j REJECT

sudo iptables -A INPUT -p tcp --dport 23 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 23 -j REJECT

sudo iptables -A INPUT -p icmp --icmp-type echo-request -j ACCEPT
sudo iptables -A OUTPUT -p icmp --icmp-type echo-request -j REJECT
