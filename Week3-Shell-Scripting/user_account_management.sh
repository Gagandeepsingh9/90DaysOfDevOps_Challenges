#!/bin/bash

<<INFO 
THIS SCRIPT IS CREATED FOR USER ACCOUNTS MANAGEMENT: CREATED BY GS
INFO

#TO CREATE NEW USER

function create_user {
read -p "ENTER NEW USERNAME: " uname

#Checking if this user already exists using grep count before creating!
count=$(grep -wc $uname /etc/passwd) # Here -w is for exact word match

#Now if the count is zero it means that user doesnot exists 
if [ $count == 0 ];
then
	sudo useradd -m $uname -s /bin/bash
	read -p "ENTER PASSWORD FOR $uname: " pswd
	echo -e "$pswd\n$pswd" | sudo passwd $uname
	echo "YOU HAVE SUCCESSFULLY CREATED THE NEW USER - $uname"
else
	echo "THIS USERNAME ALREADY EXISTS"
fi
}


#TO DELETE USER

function delete_user {
read -p "ENTER USERNAME YOU WANT TO DELETE: " udelete

#Checking if this user exists using grep count before deleting!
counter=$(grep -wc $udelete /etc/passwd)

if [ $counter == 0 ];
then
	echo "THIS USERNAME DOESNOT EXISTS"
else
	sudo userdel -r $udelete &> /dev/null  #here &> is to redirect both stdoutput and stderror to black hole
	echo "YOU HAVE SUCCESSFULLY DELETED THE USER NAME- $udelete"
fi
}


#TO RESET PASSWORD

function reset_password {
read -p "ENTER USERNAME YOU WANT TO RESET THE PASSWORD FOR: " userpreset

#Checking if this user exists using grep count before reseting the password!
check=$(grep -wc $userpreset /etc/passwd)

if [ $check == 0 ];
then
        echo "THIS USERNAME DOESNOT EXISTS"
else
	read -p "ENTER NEW PASSWORD: " newpasswd
	echo -e "$newpasswd\n$newpasswd" | sudo passwd $userpreset	
        echo "YOU HAVE SUCCESSFULLY RESET THE PASSWORD FOR USER- $userpreset"
fi

}

#TO LIST USER ACCOUNTS

function list_users {
awk -F: '$3>=1000 && $3<=2000 {print "User:" $1,"UID:" $3}' /etc/passwd #F: is to set Field Separator :
}

while getopts "cdrl" option; 
do
	case $option in
		c) create_user ;; 
		d) delete_user ;;
		r) reset_password ;;
		l) list_users ;;
		*) echo "INVALID OPTION, TRY AGAIN!" 
			exit ;;  
	esac
done




