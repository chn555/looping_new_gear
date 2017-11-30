#!/bin/bash

#check all files in home folder for ownerships, changes ownership of those not owned by user
#chn555
#30/11/17

if (( $EUID != 0 )); then
	echo "please run as sudo"
	exit
fi

echo "setting ownership on all files in home folder"

list=$(ls -l ~/ | awk '{print $9}' )

for file in $list; do
	if [ -O ~/$file ]; then
		echo " $file owned by $USER, moving on"
	else chown $USER $file
		echo " $file not owned by $USER, setting ownership"
	fi
done
