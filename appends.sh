#!/bin/bash
p='* papple'
# grep $p ~/banana  
# if [ $? -eq 0 ]
# then
#   echo found 
# else
#   echo not found
# fi
found=0
while read line
do
  case $line in
    $p) found=1 ;;
  esac
done < ~/banana

if [ $found = 0 ]
then 
  echo not found
else 
  echo found
fi
