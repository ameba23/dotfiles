#!/bin/zsh
# this script sends it arguments to a vim instance which has my todo list
# it is wrapped in a bash function that allows mutiple arguments without quotes to behave as desired
# and conviently called t so i can type:
# t walk the dog

# uses a macro defined in vim as @q.  this will jump to the desired part of the 
# file and enter insert mode
vim --servername todo --remote-send "<esc>@q$@<esc>"

# if no error caused by the vim instance not existing:
if [ $? -eq 0 ]
then
  echo '[0;32m Todo item added'
  echo "[0;31m* [0m"$@
else
  echo todo not open
  # edit the file with sed?  or start vim remote server?
fi

# jump to the todo list?  rather not. 
# i3-msg "workspace 4:todo"
