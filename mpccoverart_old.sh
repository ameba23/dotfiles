#!/bin/bash


mpddir="/home/potatoe/Musique/"
fname=`mpc -f %file% current`
ffname=`echo $fname | sed "s/^\/\/home/\/home/g"` || ffname="fff"

if [[ $ffname = /home/* ]] ; then

  fulpath=$ffname
else
  
  fulpath='/home/potatoe/Musique/'$ffname
fi
#ffmpeg -y -i "$fulpath" /tmp/cover.jpg && feh /tmp/cover.jpg --reload 1 &
ffmpeg -y -i "$fulpath" /tmp/cover.jpg  


#fname=`mpc -f %file% current --wait`

#ffname=`echo $fname | sed "s/^\/\/home/\/home/g"` || ffname="fff"
#echo $ffname
#fulpath='/home/potatoe/Musique/'$ffname
#ffmpeg -y -i "$fulpath" /tmp/cover.jpg 
