#!/bin/bash

#check all files in home folder for ownerships, changes ownership of those not owned by user
#chn555
#30/11/17


read -p "enter user name
" name
echo "setting ownership on all files in home folder"

list=$(ls -l ~/ | awk '{print $9}' )


for file in $list; do
	file1="/home/$name/$file"
	if [ -O $file1 ]; then
		echo " $file owned by $name, moving on"
	else sudo chown $name $file1
		echo " $file not owned by $name, setting ownership"
	fi
done
