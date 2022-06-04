#
# [ * ] TCLKIT INSTALLATION !
#

function install_tclkit(){
    su $(logname) -c "git clone https://aur.archlinux.org/tclkit.git /home/$(logname)/repos/tclkit-bin > /dev/null 2>&1";
    su $(logname) -c "cd /home/$(logname)/repos/tclkit-bin; makepkg -si > /dev/null 2>&1; sudo pacman -Sy > /dev/null 2>&1;";
}