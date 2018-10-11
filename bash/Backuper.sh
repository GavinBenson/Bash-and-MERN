#!/bin/bash

# define functions before calling them

function total_files {

find $1 -type f | wc -l

}


function total_directories {

find $1 -type f | wc -l

}


clear
echo -e "\e[92mMaking a tar backup of my BASH directory, press [enter] to continue"
read -p " "

dayName=$(date +%A)
dayDate=$(date +%d)
month=$(date +%B)
year=$(date +%Y)

echo -e "Day: $dayName"
echo -e "\e[92mDate: $dayDate"
echo -e "Month: $month"
echo -e "\e[92mYear: $year"

cal
echo

# Hostname Info
echo -e "\e[92m********** Hostname Information ***********"
hostnamectl
echo " "

#Disk usage
echo -e "\e[92m********** Filesystem disk space useage ***"
df -h
echo " "

#Memory -- free and used
echo -e "\e[92m********** Memory -- Free and Used ********"
free
echo " "

# System uptime and performance mode
echo -e "\e[92m********** System Uptime and Performance Mode ********"
uptime
echo " "


echo -e "\e[92m********** Users ********"
who
echo " "



echo -e "\e[92m**********  ********"
ps
echo " "



dest=~/backups
src=~/bash


echo "Number of files in $src --"
total_files $src

echo "Number of directories in /home/compsci --"
total_directories /home/compsci

if [ -d $dest ]; then
echo -e "\e[92mBackup folder exists"
else
echo -e "\e[92mBackup folder does not exist, creating it now..."
mkdir -p $dest
echo
fi

read -p "Press any key to continue" -n1 -s
mkdir -p $dest/"$dayName $dayDate $month $year"
echo

echo -e "\e[92mBackup starting..."
tar cvfz $dest/"$dayName $dayDate $month $year"/bash_backup.tgz $src



echo
echo -e "\e[92mHere is the contents of your backup directory:"
cd $dest
ls -ahl &> logEverything.txt
echo


echo -e "\e[92mAnd here is what is inside that directory:"
cd "$dayName $dayDate $month $year"
ls -ahl 
echo



echo -e "\e[92mAll done, press [enter] to exit"
read -p " "
cd ~
clear

