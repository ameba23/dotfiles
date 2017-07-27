#!/bin/bash

i3-msg "workspace 6"
i3-msg "append_layout /home/potatoe/workspace5.json"

urxvt -name ncmpcpp -e ncmpcpp &
urxvt -name nausea -e nausea -c /tmp/mpd.fifo &
imv /tmp/cover.jpg
