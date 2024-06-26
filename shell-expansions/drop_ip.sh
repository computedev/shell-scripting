#!/bin/bash
# This script will block an ip address or domain name

# if you use positional parameters then comment the read command line
read -p "Enter the ip address or the domain to be blocked: " ip

# instead of reading we can use positional parameters as well 
# ip=$1

echo "Blocking $ip"
sudo iptables -A INPUT -s $ip -j DROP

echo "Blocked $ip successful"

#command to run is given below 
# ./drop_ip.sh 192.168.1.1 #$1 is the 192.168.1.1
