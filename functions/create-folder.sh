#!/bin/bash

#
# [ * ] CREAR DIRECTORIOS !
#

function createDirectory(){
    echo -en "\t ==> Creando directorio ${cyanColour} $1 ${endColour}...";
    if [[ ! -d $1 ]];then
        su $(logname) -c "mkdir -p ${1}";
        if [[ -d $1 ]];then
            echo -e "${greenColour}(CREATED)${endColour}";
            else
            echo -e " ${redColour}(NOT CREATED)${endColour} ";
            tput cvvis
            exit 0
            fi
    else
        echo -e "${greenColour} (CREATED) ${endColour}";
    fi
}

