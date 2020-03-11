magenta=$(tput setaf 5)
green=$(tput setaf 2)
cyan=$(tput setaf 6)
normal=$(tput sgr0)

archey3

printf "   ${cyan}system upgrade using yay${normal}\n\n" ;

sudo printf "\n ${magenta}running: ${green}yay --noconfirm --sudoloop -Syu${normal} \n\n" ;
/usr/bin/yay --noconfirm --sudoloop -Syu ;

printf "\n ${magenta}removing orphans: ${green}%s%s${normal} \n\n" "yay --noconfirm -Rns \$(yay -Qtdq)" ;
/usr/bin/yay --noconfirm -Rns $(yay -Qtdq) ;

printf "\n ${magenta}removing uninstalled packages from pacman cache: ${green}paccache --remove --verbose --uninstalled --keep 0${normal} \n\n" ;
/usr/bin/paccache -rvuk0 ;

printf "\n ${magenta}removing old packages from pacman cache: ${green}paccache --remove --verbose --keep 2${normal} \n\n" ;
/usr/bin/paccache -rvk2 ;

printf "\n ${magenta}searching for failed services: ${green}systemctl --failed${normal} \n\n" ;
/usr/bin/systemctl --failed ;

printf "\n ${magenta}searching for errors in the log files: ${green}journalctl --priority=3 --catalog --boot${normal} \n\n" ;
/usr/bin/journalctl -p 3 -xb ;

printf "\n\n\n ${cyan}done! press any key to quit...${normal} "

read -s -n 1
