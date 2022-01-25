#!/usr/bin/bash
#This is a bash script to backup user's home directory to /tmp/.

user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

echo "Creating backup..."
tar -czf $output $input 2> /dev/null
echo "Backup of $input completed! Details about the output backup file: "
ls -l $output
