#!/bin/bash

clear
echo Welcome to my second bash script

echo What is your name?
read name
read -p "Hello there $name. Press [enter] to continue."

clear
echo 'Would you like to update? Y/N'
read update

if [[ "$update" == "y" ]] || [[ "$update" == "yes" ]]
	then read -p "Updating. Press [enter] to continue."
	sudo apt update
else
	read -p "Not updating. Press [enter] to continue"
fi

clear
echo 'Would you like to upgrade? Y/N'
read upgrade

if [[ "$upgrade" == "y" ]] || [[ "$upgrade" == "yes" ]]
	then read -p "Upgrading. Press [enter] to continue."
	sudo apt upgrade
else
	read -p "Not upgrading. Press [enter] to continue"
fi

clear
echo 'Would you like to autoclean? Y/N'
read autoclean

if [[ "$autoclean" == "y" ]] || [[ "$autoclean" == "yes" ]]
	then read -p "Autocleaning. Press [enter] to continue."
	sudo apt autoclean
else
	read -p "Not autocleaning. Press [enter] to continue"
fi

clear
echo 'Would you like to autoremove? Y/N'
read autoremove

if [[ "$autoremove" == "y" ]] || [[ "$autoremove" == "yes" ]]
	then read -p "Autoremoving. Press [enter] to continue."
	sudo apt autoremove
else
	read -p "Not autoremoving. Press [enter] to continue"
fi


