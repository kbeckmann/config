setxkbmap -layout se
xset r rate 200 25
xset b 3 220 500

amixer -c 1 sset 'Beep' 0%
amixer -c 1 sset 'Speaker' 100%
amixer -c 1 sset 'Master' 60%


#xrandr --newmode "2560x1440" 220.812 2560 2608 2640 2720 1440 1443 1448 1478 -hsync -vsync
#xrandr --addmode HDMI1 "2560x1440"



xrdb ~/.Xresources


exec i3



