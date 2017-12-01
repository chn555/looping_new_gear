#!/bin/bash

read -p "enter file name
" filename

if [ -f $filename ]; then
	echo file verified, printing file content
	sleep 1s
	cat $filename
elif
	[ -d $filename ];then
	echo folder found, printing content
	sleep 1s
	ls -l $filename
else 
	echo file name does not exist, exiting
fi
