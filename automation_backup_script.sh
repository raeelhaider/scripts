#!/bin/bash

mkdir /home/ubuntu/data
	for i in $(seq 1 5); do
		touch /home/ubuntu/data/file$i.txt
	done
mkdir /home/ubuntu/backup
# $ $(date +backup-%F) is used to create a directory name with backup-date
cp -r /home/ubuntu/data/ /home/ubuntu/backup/$(date +backup-%F)
      	if [ $? -eq 0 ]; then
		echo "Successful"
	else
		echo "Failed"
	fi




