#!/bin/zsh
# this script is called by a keybinding in vimb to add the current webpage to my links list and re-generate it from markdown. 
# 
# ameba 11/2016

htmlfile="$HOME/Documents/oftenlinks.html"
mdfile="$HOME/Documents/oftenlinks/oftenlinks.md"

# create markdown bullet point from link
towrite="* [$VIMB_TITLE]($VIMB_URI)" 

# check if it already exists in file
found=0
while read line
do
  case $line in 
    $towrite) found=1 ;;  
  esac 
done < $mdfile

# use sed to insert the line at the begining of the 'unsorted' section
if [ $found = 0 ]
then
  sed -i "/unsorted/a $towrite" $mdfile
  #echo $towrite >> ~/Documents/oftenlinks.md
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

echo "<html>" >! $htmlfile
markdown $mdfile >> $htmlfile
echo "</html>" >> $htmlfile
