#!/bin/bash

#
# [ * ] AUR INSTALLATION !
#

function install_aur(){
    su $(logname) -c "git clone https://aur.archlinux.org/paru-bin.git /home/$(logname)/repos/paru-bin > /dev/null 2>&1";
    su $(logname) -c "cd /home/$(logname)/repos/paru-bin; makepkg -si > /dev/null 2>&1; sudo pacman -Sy > /dev/null 2>&1;";
}