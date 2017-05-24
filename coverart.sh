#!/bin/bash
#fname=`mpc -f %file% current`
#ffname=`echo $fname | sed "s/^\/\/home/\/home/g"` || ffname="fff"
#echo $ffname
ffmpeg -y -i "$1" /tmp/cover.jpg && feh -F /tmp/cover.jpg
