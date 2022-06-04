#!/bin/bash

#
# [ * ] VIRTUALBOX INSTALLATION !
#

function install_virtualbox(){
    pacman -S virtualbox --noconfirm > /dev/null 2>&1;
}