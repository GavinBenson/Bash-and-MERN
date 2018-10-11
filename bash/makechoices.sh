#!/bin/bash

##############################
#    Created by Gavin B.     #     
##############################

clear

choice=4

echo "1 update"
echo "2 upgrade"
echo "3 autoclean"
echo "4 autoremove"

while [ $choice -eq 4 ]; do

read choice

if [ $choice -eq 1 ]; then
echo "Update"
sudo apt update -y
else
	if [ $choice -eq 2 ]; then
	echo "Upgrade"
	sudo apt upgrade -y
	else
	
		if [ $choice -eq 3 ]; then
		echo "Autoclean"
		sudo apt autoclean -y
		else
		
			if [ $choice -eq 4 ]; then
			echo "Autoremove"
			sudo apt autoremove -y

			else
			echo "Sorry, I do not understand."
			fi
		fi
	fi
fi
done
