#!/bin/bash
xdotool search "Synergy 1 Pro" windowactivate --sync
sleep 0.25
xdotool mousemove 1316 731
xdotool click 1
sleep 0.25

n=1

for i in "$@"
do
	while (($n <= $(($i))))
	do
		xdotool search "Mozilla Firefox" windowactivate --sync

	sleep 0.04

		xdotool mousemove 295 300
		xdotool mousedown 1

	sleep 0.04

		xdotool mousemove 270 267
		xdotool mouseup 1

	sleep 0.04

		xdotool key ctrl+c

	sleep 0.04

		xdotool key Down

		xdotool search "Arkusze Google - Mozilla Firefox" windowactivate --sync

	sleep 0.04

		xdotool key ctrl+v

	if (( $n <= 1 ))
	then
		sleep 0.3
	else
		sleep 0.04
	fi

		xdotool mousemove 915 194
		xdotool click 1

	if (( $n <= 1 ))
	then
		sleep 0.3
	else
		sleep 0.04
	fi

		xdotool key ctrl+x
		xdotool mousemove 1019 173
		xdotool click 1

	if (( $n <= 1 ))
	then
		sleep 0.3
	else
		sleep 0.04
	fi

		xdotool key ctrl+v

	sleep 0.1

		xdotool key ctrl+alt+9

	sleep 0.04

		xdotool mousemove 915 176
		xdotool click 1

	n=$(( n+1 ))
	done
xdotool search "Mozilla Firefox" windowactivate --sync
sleep 0.04
xdotool key ctrl+Tab
sleep 0.5
n=1
done

xdotool search "Synergy 1 Pro" windowactivate --sync
xdotool mousemove 1316 731
sleep 0.25
xdotool click 1
xdotool search "karol@archlinux" windowactivate --sync
