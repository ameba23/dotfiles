#!/bin/bash

i3-msg "workspace 5:mpc"
i3-msg "append_layout $HOME/.config/i3/workspace5.json"

urxvt -name ncmpcpp -e ncmpcpp &
urxvt -name nausea -e nausea -c /tmp/mpd.fifo &
imv /tmp/cover.jpg
