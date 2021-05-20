#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#	exec sway
#	exec startx
#fi
