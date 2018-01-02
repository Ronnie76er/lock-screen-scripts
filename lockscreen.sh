#!/bin/bash
 
i3lock -n -S 1 -i `ls $HOME/.backgrounds/lockscreens/*.png | shuf -n 1` --color=000000 --textcolor=ffffff00 --insidecolor=ffffff1c --ringcolor=ffffff3e --linecolor=ffffff00 --keyhlcolor=ffffff80 --ringvercolor=00000000 --insidevercolor=0000001c --ringwrongcolor=88000055 --insidewrongcolor=0000001c --indpos="x+(w/2):y+h-75" --radius=30
