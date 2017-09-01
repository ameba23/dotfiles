#!/bin/bash
# load layout screen for ncmpcpp player with visualiser and cover art in separate windows


i3-msg "workspace 5:mpc"
i3-msg "append_layout $HOME/.config/i3/workspace5.json"

#i3-msg "no_focus [class="imv"]"
#i3-msg "no_focus [title="nausea"]"
urxvt -name nausea -e nausea -c /tmp/mpd.fifo &

# todo: make this part be a separate script which restarts 
if [ ! -f /tmp/cover.jpg ] ; then
  cp $HOME/dotfiles/hdd.jpg /tmp/cover.jpg
fi
imv /tmp/cover.jpg &

urxvt -name ncmpcpp -e ncmpcpp 
#i3-msg "[title="ncmpcpp"] focus"
