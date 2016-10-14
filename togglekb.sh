#!/bin/bash
# script to toggle between US and de keyboard layouts, to be called by keybinding in window manager
# requires notify-send
#
setxkbmap -query | grep -q "us$"
if [ $? -eq 0 ]
then
  notify-send -t 1000 "keyboard set to de"
  setxkbmap de
else
  notify-send -t 1000 "keyboard set to us"
  setxkbmap us
 # setxkbmap gb
fi

