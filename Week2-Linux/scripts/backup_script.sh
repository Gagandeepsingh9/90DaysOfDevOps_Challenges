#!/bin/bash

<<INFO 
 THIS SCRIPT IS FOR BACKUPS - TASK6 WEEK2 CHALLENGE 
INFO

function my_backup {
date=$(date +%m-%d-%Y-%H-%M)
tar -czvf /home/gagan/backups/backup-$date.tar.gz $1
echo "BACKUP CREATED SUCCESSFULLY"
}

my_backup $1

