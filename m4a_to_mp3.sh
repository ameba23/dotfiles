#!/bin/bash
# converts all m4a files in the current directory to mp3
for f in *.m4a
do 
  echo converting $f to mp3 
  ffmpeg -v 5 -y -i ./"$f" -acodec libmp3lame -ac 2 -ab 192k ./"${f%%.$1}.mp3"
done

