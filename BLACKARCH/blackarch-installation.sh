#!/bin/bash

#
# [ * ] RESPOSITORIO BLACKARCH !
#

function installation_blackarch(){
    echo -en " ${yellowColour}[ * ]${endColour} Instalando paquete BLACKARCH-STRAP ...";
    su $(logname) -c "curl -O https://blackarch.org/strap.sh > /home/$(logname)/repos/blackarch/strap.sh > /dev/null 2>&1";
    chmod +x /home/$(logname)/repos/blackarch/strap.sh;
    /home/$(logname)/repos/blackarch/strap.sh > /dev/null 2>&1;
    echo -e "${greenColour} (INSTALLED) ${endColour}";
}