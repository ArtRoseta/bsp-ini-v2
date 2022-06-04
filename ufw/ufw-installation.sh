#!/bin/bash

#
# [ * ] UFW INSTALLATION !
#

function install_ufw(){
    pacman -S ufw --noconfirm > /dev/null 2>&1;
    ufw enable > /dev/null 2>&1;
    ufw allow http > /dev/null 2>&1;
    ufw allow http > /dev/null 2>&1;
    ufw deny all incoming > /dev/null 2>&1;
}