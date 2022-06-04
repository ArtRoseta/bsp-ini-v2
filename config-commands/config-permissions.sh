#!/bin/bash 

#
# [ * ] CONFIGURE PERMISSIONS !
#

function configure_perms(){
    chmod 644 /home/$(logname)/.config/sxhkd/sxhkdrc;
    chown $(logname):$(logname) /home/$(logname)/.config/sxhkd/sxhkdrc
    chmod 755 /home/$(logname)/.config/bspwm/bspwmrc;
    chown $(logname):$(logname) /home/$(logname)/.config/bspwm/bspwmrc
    chmod 755 /home/$(logname)/.config/polybar/launch.sh;
    chown $(logname):$(logname) /home/$(logname)/.config/polybar/launch.sh
}