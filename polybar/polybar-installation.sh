#!/bin/bash

#
# [ * ] POLYBAR INSTALLATION !
#

function install_polybar(){
    pacman -S polybar --noconfirm > /dev/null 2>&1;
    rm /etc/polybar/config.ini
    cp ./config-files/config.ini /etc/polybar/
    chmod -R 644 /etc/polybar/config.ini

    cp -R ./scripts /home/$(logname)/.config/polybar/
    cp ./config-files/launch.sh /home/$(logname)/.config/polybar/
    chmod -R 755 /home/$(logname)/.config/polybar
}