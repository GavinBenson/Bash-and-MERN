
Update, Upgrade, Autoclean, and Autoremove
Code

#!/bin/bash
clear
echo "Hello, welcome to my BASH updater script."
echo  -n "What is your name?"
read name
echo "Hello, $name"
echo -n "Do you want to update [y/n]?"
read update
if [ "$update" == "y" ] || [ "$update" == "Y" ] || [ "$update" == "yes" ] || [ "$update" == "Yes" ]
	then sudo apt update
		echo "Update Successful."
		echo
	else echo "Not updating."
fi
echo -n "Do you want to upgrade [y/n]?"
read upgrade
if [ "$upgrade" == "y" ] || [ "$upgrade" == "Y" ] || [ "$upgrade" == "yes" ] || [ "$upgrade" == "Yes" ]
	then sudo apt upgrade -y
		echo "Upgrade Successful."
		echo
	else echo "Not upgrading."
fi
echo -n "Do you want to autoclean [y/n]?"
read autoclean
if [ "$autoclean" == "y" ] || [ "$autoclean" == "Y" ] || [ "$autoclean" == "yes" ] || [ "$autoclean" == "Yes" ]
	then sudo apt autoclean
		echo "Autoclean Successful."
		echo
	else echo "Not autocleaning."
fi
echo -n "Do you want to autoremove [y/n]?"
read autoremove
if [ "$autoremove" == "y" ] || [ "$autoremove" == "Y" ] || [ "$autoremove" == "yes" ] || [ "$autoremove" == "Yes" ]
	then sudo apt autoremove -y
		echo "Autoremove Successful."
		echo
	else echo "Not autoremoving."
fi
            

