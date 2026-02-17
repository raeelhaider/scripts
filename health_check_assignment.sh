#!/bin/bash

echo "============================================================Health Check========================================================"

echo "Date:" $(date)
mpstat |tail -1 | awk '{printf("CPU:%.2f\n",($3+$4+$5+$6+$7+$8+$9+$10+$11))}'


df -h| head -2 | awk '{printf("Disk Usage:%d%\n",($5))}' | tail -1

free -m | head -2 | awk '{printf("Memory Usage:%dMB Used / %dMB Total\n", $3,$2)}' | tail -1

systemctl is-active --quiet ssh
        if [ $? -eq 0 ]; then
                echo "SSH Service: Running"
        else
                echo "SSH Service: Not Running"
        fi

echo "================================================================================================================================"


