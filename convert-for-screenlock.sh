#!/bin/bash

for i in "$@"; do

	if [ ! -f $i ]; then
		continue
	fi
	echo "Starting $i"

	filename=$(basename "$i")
	filename="${filename%.*}"

	convert $i -resize 1920x1080 -background black -gravity center -extent 1920x1080  $HOME/.config/screen-lock.png -compose dissolve -define compose:args=30 -gravity South -geometry +0+50 -composite  $HOME/.backgrounds/lockscreens/$filename.png
	mv $i $HOME/.backgrounds/lockscreens/done
	echo "Done $i"
done

