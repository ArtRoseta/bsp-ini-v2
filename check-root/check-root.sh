#!/bin/bash

#
# CHECK ROOT !
#

function is_root(){
    if [[ "$(id -u)" != 0 ]];then
	    echo -e "${redColour}[ * ] ERROR: Debes ejecutarlo como root.${endColour}";
	    echo "";
	    tput cvvis
	    exit 0;
    fi
}