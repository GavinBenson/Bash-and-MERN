#!/bin/bash
clear
echo Welcome to my second BASH script
echo What is your name?
read name
echo Hello $name, glad to work with you.
read -p "Press enter to continue."
echo Do you want to update, upgrade, autoclean, autoremove, or all?
read answer
case "$answer" in
     update)
        clear
        sudo apt update -y
        echo "Updated"
        ;;
     Update)
        clear
        sudo apt update -y
        echo "Updated"
        ;;
     UPDATE)
        clear
        sudo apt update -y
        echo "Updated"
        ;;
     upgrade)
        clear
        sudo apt upgrade -y
        echo "Upgraded"
        ;;
     Upgrade)
        clear
        sudo apt upgrade -y
        echo "Upgraded"
        ;;
     UPGRADE)
        clear
        sudo apt upgrade -y
        echo "Upgraded"
        ;;
     autoclean)
        clear
        sudo apt autoclean -y
        echo "Autocleaned"
        ;;
     Autoclean)
        clear
        sudo apt autoclean -y
        echo "Autocleaned"
        ;;
     AUTOCLEAN)
        clear
        sudo apt autoclean -y
        echo "Autocleaned"
        ;;
     autoremove)
        clear
        sudo apt autoremove -y
        echo "Autoremoved"
        ;;
     Autoremove)
        clear
        sudo apt autoremove -y
        echo "Autoremoved"
        ;;
     AUTOREMOVE)
        clear
        sudo apt autoremove -y
        echo "Autoremoved"
        ;;
     all)
        clear
	echo "Firstly, do you want to update?"
	read ans
	case "$answer" in
     	    yes)
            	clear
            	sudo apt update -y
            	read -p "Updated, press enter to continue"
            	;;
     	    Yes)
            	clear
            	sudo apt update -y
            	read -p "Updated, press enter to continue"
            	;;
     	    YES)
            	clear
            	sudo apt update -y
            	read -p "Updated, press enter to continue"
            	;;
     	    *)
            	clear
            	;;
	
	echo "Now, do you want to upgrade?"
	read ans1
	case "$answer" in
     	    yes)
            	clear
            	sudo apt upgrade -y
            	read -p "Upgraded, press enter to continue"
            	;;
     	    Yes)
            	clear
            	sudo apt upgrade -y
            	read -p "Upgraded, press enter to continue"
            	;;
     	    YES)
            	clear
            	sudo apt upgrade -y
            	read -p "Upgraded, press enter to continue"
            	;;
     	    *)
            	clear
            	;;


	echo "Now, do you want to autoclean?"
	read ans2
	case "$answer" in
     	    yes)
            	clear
        	sudo apt autoclean -y
        	read -p "Cleaned, press enter to continue"
            	;;
     	    Yes)
            	clear
        	sudo apt autoclean -y
        	read -p "Cleaned, press enter to continue"
            	;;
     	    YES)
            	clear
        	sudo apt autoclean -y
        	read -p "Cleaned, press enter to continue"
            	;;
     	    *)
            	clear
            	;;

	echo "Lastly, would you like to autoremove?"
	read ans3
	case "$answer" in
     	    yes)
            	clear
        	sudo apt autoremove -y
        	echo "Autoremoved successfully"
            	;;
     	    Yes)
            	clear
        	sudo apt autoremove -y
        	echo "Autoremoved successfully"
            	;;
     	    YES)
            	clear
        	sudo apt autoremove -y
        	echo "Autoremoved, successfully"
            	;;
     	    *)
            	clear
            	;;
        ;;
    *)
        echo "Error, not a valid option."
        exit 1

esac
read -p "Press enter to exit"
clear
exit 1



