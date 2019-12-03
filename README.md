# Firewall-Scripts
Doucmentation
-Example of opening port 80 (HTTP) and redirecting to port 8080

Documentation :
-	Configurung a firewall port rule for the MYSQL service 

Documentatioin:
-	Script to open incoming and outgoing ports regarding to SSH.

-	Documentation: 
-	Opening necessary ports for email services (SMTP, POP)




Documentation: 
Allowing and blocking specific host(s).
Note: Example of “XXXXX” represents a generic random port number – I.E 1-45000)
Also Note: MAC address is randomly generated as example.

Documentation: 
- Generation of IPTABLES ruleset backup.

Bottom Question : Write the specs for how you think you could prevent a DDOS attack using IPtables.  Can you write a script for this?

The only way to utilize IP tables as a firewall to prevent a DDOS attack a script would have to represent the following command once IPTABLES is verified installed;
iptables -A INPUT -p tcp --dport 80 -i ens33 -m state --state NEW -m limit --limit 1/minute --limit-burst 10

