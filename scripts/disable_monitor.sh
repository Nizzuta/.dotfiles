#!/bin/sh
HDMI=$(hyprctl monitors | grep HDMI | wc -l)
case $HDMI in
	0)
		exit
	;;
	*)
		hyprctl keyboard monitor "eDP-1, disable"
	;;
esac
