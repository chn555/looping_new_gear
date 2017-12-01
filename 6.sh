#!/bin/bash

echo "this script will check if the user is logged in, if not will wait until he is"
sleep 1s
read -p "enter user name
" u

until [[ $(who | grep $u |awk '{print $1}') = $u ]]
do
	sleep 5s
done

echo "user $u is logged in right now"

