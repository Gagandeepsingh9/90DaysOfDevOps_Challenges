#!/bin/bash

<< INFO
THIS SCRIPT IS FOR BACKUPS CREATED BY GS
INFO

d=$(date +%d-%m-%Y-%H-%M)               # HERE d is a variable storing the date in format date-month-year-hours-minutes

function create_backup {
zip -r "$1/backup-$d.zip" $2            # HERE $1 argument is the Destination Path & $2 is the Source Path
echo "BACKUP CREATED SUCCESSFULLY"
}


function delete_old_backups {
count=$(ls $1 | grep -ic backup)   # To count the no. of backup files in the backup directory (destination)
files=$(ls -t $1 | grep -i backup | awk 'NR>3 {print}') # Making a list of the older backup files, since we donot want more than 3 latest backup files

if (( $count > 3 )); # If the no. of backup files in the backup directory are more than 3 then using for loop delete them one by one.
then
	for i in $files; # Here $files contains the list of the old backup files we want to delete.
	do
		rm "$1/$i"   #Here $1 is the destination path and $i is the name of the old backup file we want to delete.
		echo "OLD BACKUP FILE - $i Deleted!"
	done
fi
}

function remote_backup {
aws s3 sync "$1/" "s3://$3/" --delete > /dev/null  # To upload the backup files in aws s3 bucket.
echo "BACKUP FILES ARE SUCCESSFULLY STORED IN s3 BUCKET - $3"
}

create_backup $1 $2
delete_old_backups $1
remote_backup $1 $2 $3

