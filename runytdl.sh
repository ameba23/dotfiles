#!/bin/bash
#echo "youtube-dl \"https://www.youtube.com/$1\"" >> ~/Downloads/ytdl_script.sh
line="youtube-dl \"https://www.youtube.com/$1\""  
# i3-msg 'workspace 1:term'
urxvt -e $line
#youtube-dl ""
