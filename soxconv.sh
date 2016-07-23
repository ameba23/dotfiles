#!/bin/bash
# batch convert using sox 
# usage soxconv.sh ext1 ext2
# eg: soxconv.sh ogg mp3  will convert all ogg in current dir to mp3 
for f in *.$1
do 
  echo running sox ./"$f" ./"${f%%.$1}.mp3"
  sox ./"$f" ./"${f%%.$1}.mp3"
  
done
