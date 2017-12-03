#!/bin/bash

read -p "enter the mode of transportation you want to check
" MOT

case $MOT in
boat)
	echo "costs about 200k, including insurance and taxes. need to have a skipper license. eventually the bastard child of the women you're sleeping with is gonna crash it into a dam and flood a city. would not recommend"
	;;
car)
	echo "costs about 100K, will get you to most places. if you pick a car it is advised you watch top gear seasons 13-21."
	;;	
bike)
	echo "the most basic bike will cost 1.5k, not suitable for paved roads and long distances. if you choose a bike I will personaly hate you."
	;;
"electric bike")
	echo "costs about 4k, will make you a cunt"
	;;

*)
	echo "mode of transportation not found, you're probably fine."
	;;
esac
