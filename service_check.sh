#!/bin/bash

systemctl is-active --quiet ssh
	if [ $? -eq 0 ]; then
		echo "ssh is running"
	else 
		echo "ssh is not running"
	fi



