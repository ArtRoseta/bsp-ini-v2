#!/bin/bash

#
# [ * ] ACTIVATE GDM !
#
function activate_gdm(){
    e=0
    sp="543210"
    echo -n ' '
    while true
    do
        printf "\b${sp:i++%${#sp}:1}"
        sleep 1
        o=$(($e + 1));
        if [[ $o == "5" ]];then
            tput cvvis
            systemctl enable gdm.service > /dev/null 2>&1;
            kill $!;
        fi
    done &
    trap 'kill $!' SIGTERM SIGKILL
}