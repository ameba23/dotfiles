#!/bin/bash

function reset_background
{
    # feh default background
    feh --bg-scale /home/peter/.wallpaper/doom.jpg
}

{
    maindir="/home/peter/music/"
    artistdir="$(ncmpcpp --current-song [{%A}])"
    covers="$(find "$maindir + $artistdir" -type d -exec find {} -maxdepth 1 -type f -iregex ".*/.*\(${album}\|cover\|folder\|artwork\|front\).*[.]\(jpe?g\|png\|gif\|bmp\)" \; )"
    src="$(echo -n "$covers" | head -n1)"
    if [[ -f "$COVER" ]] ; then
             feh --bg-scale $covers
        else
            reset_background
        fi
} &
