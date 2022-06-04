#!/bin/bash

#
# [ * ] BSPWM INSTALLATION !
#

function install_bspwm(){
    su $(logname) -c "git clone https://github.com/baskerville/bspwm.git /home/$(logname)/repos/bspwm > /dev/null 2>&1;";
    su $(logname) -c "cd /home/$(logname)/repos/bspwm; make > /dev/null 2>&1; make install > /dev/null 2>&1;";
    cp $(pwd)/config-files/bspwmrc /home/$(logname)/.config/bspwm/
}