#!/bin/zsh
vim --servername todo --remote-send "<esc>@q$@<esc>"
# if no error:

echo '[0;32m Todo item added'
echo "[0;31m* [0m"$@
# i3-msg "workspace 4:todo"
