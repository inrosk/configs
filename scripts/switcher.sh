#!/bin/bash

n="0"
while [ $n -lt 4 ]
do
name=$(xdotool getactivewindow getwindowname)

if [ "$n" != "0" ];
then

	if [ "$name" != "$prevname" ];
	then
		if [ "$name" == "Synergy Pro" ];
		then
			echo "Synergy is open"
		fi
	fi
fi

prevname="$name"
sleep 1
n="1"
done
