magenta=$(tput setaf 5)
green=$(tput setaf 2)
cyan=$(tput setaf 6)
normal=$(tput sgr0)

archey3

printf "   ${cyan}system upgrade using yay${normal}\n\n" ;

#printf "\n ${magenta}running: ${green}yay -Sy --needed --noconfirm archlinux-keyring${normal} \n\n" ;
#/usr/bin/yay -Sy --needed --noconfirm archlinux-keyring ;

sudo printf "\n ${magenta}running: ${green}yay --noconfirm --sudoloop -Syu${normal} \n\n" ;
/usr/bin/yay --noconfirm --sudoloop -Syu ;

printf "\n ${magenta}removing orphans: ${green}%s%s${normal} \n\n" "yay --noconfirm --Yc" ;
/usr/bin/yay -Yc ;

# printf "\n ${magenta}searching for failed services: ${green}systemctl --failed${normal} \n\n" ;
# /usr/bin/systemctl --failed ;

# printf "\n ${magenta}searching for errors in the log files: ${green}journalctl --priority=3 --catalog --boot${normal} \n\n" ;
# /usr/bin/journalctl --priority=3 --catalog --boot ;

printf "\n ${magenta}running: ${green}systemd-analyze${normal} \n\n" ;
/usr/bin/systemd-analyze ;

printf "\n ${magenta}running: ${green}profile-cleaner gc${normal} \n\n" ;
/usr/bin/profile-cleaner gc ;

printf "\n\n\n ${cyan}done! press any key to quit...${normal} "

read -s -n 1
