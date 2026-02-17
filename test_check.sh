#!/bin/bash


read -p "Enter command name" cmd


command -v "$cmd" &>/dev/null

status=$?

if [ $status -eq 0 ]; then

        echo "$cmd is installed"

else

        echo "$cmd is not installed"
fi


	

