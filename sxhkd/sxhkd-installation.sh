#!/bin/bash

#
# [ * ] SXHKD INSTALLATION !
#

function install_sxhkd(){
    su $(logname) -c "git clone https://github.com/baskerville/sxhkd.git /home/$(logname)/repos/sxhkd > /dev/null 2>&1;";
    su $(logname) -c "cd /home/$(logname)/repos/sxhkd; make > /dev/null 2>&1; make install > /dev/null 2>&1;";
    cp $(pwd)/config-files/sxhkdrc /home/$(logname)/.config/sxhkd/
}