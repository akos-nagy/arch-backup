xautolock -time 30 -locker "i3lock -c 000000" -corners ---- &
picom -CGb --use-damage --vsync &
#feh --bg-scale /home/akos/Dropbox/stuff/other/misc/wallpaper.jpg
hsetroot -solid #000000 &
#xmodmap -e "pointer = 1 25 3 4 5 6 7 8 9" &
exec i3
