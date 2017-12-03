#!/bin/bash

read -p "please enter username
" username

uid=$(id -u $username)
if [[ $uid -gt 1000 ]] && [[ $uid -lt 500 ]] ; then
	echo "user is assigned UID $uid"
        userinfo=$(cat /etc/passwd | grep $username | cut -d ":" -f 5)
	userfullname=$(echo $userinfo | cut -d "," -f 1 )
	userroomnumber=$(echo $userinfo | cut -d "," -f 2 )
	userworkphone=$(echo $userinfo | cut -d "," -f 3 )
	userhomephone=$(echo $userinfo | cut -d "," -f 4 )
	userotherinfo=$(echo $userinfo | cut -d "," -f 5 )
	
	echo "full name is $userfullname"
	echo "room number is $userroomnumber"
	echo "work number is $userworkphone"
	echo "home number is $userhomenumber"
	echo "other info $userotherinfo"

else 
	echo "UID is not between 500-1000"
fi

sleep 5s
