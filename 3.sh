#!/bin/bash

read -p "input time for command to be executed in HHMM format
" time

while [ -z $time ]; do read -p "input time for the command to be executed, in HHMM format
" time
done

read -p "input command to be executed at $time 
" command

while [ -z $command ] ; do read -p "input command to be executed at $time 
" command
done



until [ $(date +%H%M) -eq $time ]
do
	sleep 5s
done

$command
