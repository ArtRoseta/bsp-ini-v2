#!/bin/bash

#
# [ * ] INSTALAR DEPENDENCIAS !
#

function install_dependencies(){
    echo -en "\t ==> ${cyanColour}${1}${endColour}... ";

	command -v $1 > /dev/null 2>/dev/null
	instalado="$(echo $?)";
	if [[ $instalado == "0" || $instaladoT == "0" ]];then
        	echo -e "${greenColour} (INSTALLED) ${endColour}";
	else	
        	pacman -S $1 --noconfirm > /dev/null 2>&1;
       		command -v $1 > /dev/null 2>/null
        	instalado2="$(echo $?)"
        	if [[ $instalado2 != "" ]];then
       	        	echo -e "${greenColour} (INSTALLED) ${endColour}";
        	else
					echo "";
                	echo -e "${redColour} (NOT INSTALLED) ${endColour}";
                	exit 0;
        	fi
	fi
}