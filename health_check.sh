#!/bin/bash

echo "===================================Health Check================================"
echo "Hostname: $(hostname)"
echo "Uptime:"
uptime -p

echo "Disk Usage:"
df -h /

echo "Memory:"
free  -m
 

echo "=================================Network Check================================="

ping -c 5 www.google.com 
 

if [ $? -eq 0 ]; then
 	echo "\n\nNetwork is stable"
else
	echo "Network is not stable"
fi



