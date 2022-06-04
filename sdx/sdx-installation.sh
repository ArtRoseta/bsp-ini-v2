#
# [ * ] SDX INSTALLATION !
#

function install_sdx(){
    su $(logname) -c "git clone https://aur.archlinux.org/sdx.git /home/$(logname)/repos/sdx-bin > /dev/null 2>&1";
    su $(logname) -c "cd /home/$(logname)/repos/sdx-bin; makepkg -si > /dev/null 2>&1; sudo pacman -Sy > /dev/null 2>&1;";
}