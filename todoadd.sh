#!/bin/zsh
vim --servername todo --remote-send "<esc>@q$@<esc>"
# if no error:
if [ $? -eq 0 ]
then
  echo '[0;32m Todo item added'
  echo "[0;31m* [0m"$@
else
  echo todo not open
  # edit the file with sed?  or start vim remote server?
fi
# i3-msg "workspace 4:todo"
