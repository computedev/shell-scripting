#!/bin/bash
read -p "Enter the ip address or the domain to be blocked: " ip

echo "Blocking $ip"
sudo iptables -A INPUT -s $ip -j DROP

echo "Blocked $ip successful"

