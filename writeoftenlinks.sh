#!/bin/zsh
# this script is called by a keybinding in vimb to add the current webpage to my links list and re-generate it from markdown. 
# ameba 11/2016
#
towrite="* [$VIMB_TITLE]($VIMB_URI)" 
found=0
while read line
do
  case $line in 
    $towrite) found=1 ;;  
  esac 
done < ~/Documents/oftenlinks.md

if [ $found = 0 ]
then
  echo $towrite >> ~/Documents/oftenlinks.md
fi

# echo -F "\"" $towrite "\"" > ~/Documents/towrite
# grep -$towrite ~/Documents/oftenlinks.md > ~/Documents/outgrep
# if [ $? -eq 0 ]
# then
#   echo already added
# else 
#   echo $towrite >> ~/Documents/oftenlinks.md
# fi
#cat ~/Documents/oftenlinks.md | uniq >! ~/Documents/oftenlinks.md
#echo "* [$VIMB_TITLE]($VIMB_URI)" >> ~/Documents/oftenlinks.md 
markdown ~/Documents/oftenlinks.md >! ~/Documents/oftenlinks.html
