#!/bin/zsh
vim --servername todo --remote-send "<esc>@q$@<esc>"
# if no error:
echo Todo item added
echo "* "$@
# i3-msg "workspace 4:todo"
