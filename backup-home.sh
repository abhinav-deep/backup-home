#!/usr/bin/bash
#This is a bash script to backup user's home directory to /tep/.

user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

tar -czf $output $input
echo "Backup of $input completed! Details about the output backup file: "
ls -l $output
