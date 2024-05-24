#!/bin/bash
dropped_ips="10.0.0.1 20.12.12.1 30.40.20.1"
for ip in $dropped_ips
do
    echo" Dropping the packets from $ip"
    iptables -A INPUT -s $ip -j DROP
done