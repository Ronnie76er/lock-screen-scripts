#Lock Screen Scripts

I made a few scripts to help with my lockscreen workflow. This is all currently SUPER hard coded, but hopefully will move away from that in time. This set of files allows me to download a picture I would like to make my lock screen, drop it in a particular directory, and have it entered into the rotation of lockscreens.

My lock icon comes from here: http://icons.iconarchive.com/icons/graphicloads/colorful-long-shadow/256/Lock-icon.png

Here's what the different files do:

* `convert-for-screenlock.sh` - this script takes in a list of files. It will use ImageMagick's `convert` tool to resize the photos to 1920x1080, adding black bars in the process if necessary. It will then add a circular lock icon that is semi-transparent to the bottom middle of the picture. The way the screen locks, the keyboard input will appear around this lock icon. It also retains the filename without an extension, and converts it to a `.png` file. 
* `lockscreen.sh` - this script is what is actually called to create the lockscreen. It simply randomly chooses an image from the set of images in the directory.
* `convert-lockscreen.service` - `systemd` service that, when run, will take any files in a `to-process` directory and use `convert-for-screenlock.sh` script to change them into valid lockscreens.
* `convert-lockscreen.timer` - a `systemd` timer that runs the `convert-lockscreen.service` every 15 minutes. 
