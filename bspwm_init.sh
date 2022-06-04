#!/bin/bash

#
# [ * ] SOURCES !
#
source ./colours/colours.sh
source ./check-root/check-root.sh
source ./banners/bsp-installation.sh
source ./dependencies/dependencies-installation.sh
source ./programs/programs-installation.sh
source ./functions/create-folder.sh
source ./AUR/aur-installation.sh
source ./BLACKARCH/blackarch-installation.sh
source ./bspwm/bspwm-installation.sh
source ./sxhkd/sxhkd-installation.sh
source ./polybar/polybar-installation.sh
source ./ufw/ufw-installation.sh
source ./tclkit/tclkit-installation.sh
source ./sdx/sdx-installation.sh
source ./config-commands/config-permissions.sh
source ./gdm/activate-gdm.sh

#
# [ * ] Eliminar el cursor !
#
tput civis

#
# [ * ] CHECK ROOT FUNCTION !
#
is_root

#
# [ * ] BANNER INSTALLING
#
banner_installation

#
# [ * ] USERNAME !
# [ * ] DEPENDENCIAS !
#
userName=$(logname);
dependencias=( "rsync" "linux-headers" "xorg" "xorg-server" "libxcb" "xcb-util" "xcb-util-wm" "xcb-util-keysyms" )
programs=( "kitty" "git" "wget" "gnome" "bspwm" "sxhkd" "firejail" "firefox" "code" "libreoffice-still" "shotcut" "audacity" "obs-studio" "virtualbox" "ntfs-3g" )

#
# [ * ] DIRECTORIOS NECESARIOS !
#
echo -e "  ${yellowColour}[ * ]${endColour} Creando directorios necesarios ...";
createDirectory "/home/${userName}/repos";
createDirectory "/home/${userName}/repos/paru-bin";
createDirectory "/home/${userName}/repos/blackarch";
createDirectory "/home/${userName}/repos/bspwm";
createDirectory "/home/${userName}/repos/sxhkd";
createDirectory "/home/${userName}/repos/tclkit-bin";
createDirectory "/home/${userName}/repos/sdx-bin";
createDirectory "/home/${userName}/.config";
createDirectory "/home/${userName}/.config/bspwm";
createDirectory "/home/${userName}/.config/sxhkd";
createDirectory "/home/${userName}/.config/polybar/scripts";
echo "";

#
# [ * ] PERMISOS CARPETA CONFIGURACION !
#

echo -en "  ${yellowColour}[ * ]${endColour} Cambiando permisos a la carpeta .confi ...";
chmod 700 /home/$(logname)/.config
echo -e " ${greenColour}(OK)${endColour}";

#
# [ * ] DEPENDENCIAS !
#

echo -e "  ${yellowColour}[ * ]${endColour} Instalando dependecias ...";
for program in "${dependencias[@]}";do
	install_dependencies $program;
done;
echo "";

#
# [ * ] PROGRAMAS !
#

echo -e "  ${yellowColour}[ * ]${endColour} Instalando programas ...";
for program in "${programs[@]}";do
	install_programs $program;
done;
echo "";

#
# [ * ] AUR INSTALLATION !
#
echo -en "  ${yellowColour}[ * ]${endColour} Instalando paquete AUR ...";
install_aur
echo -e "${greenColour} (INSTALLED) ${endColour}";

#
# [ * ] INSTALACIÓN BSPWM !
#
echo -en "  ${yellowColour}[ * ]${endColour} Instalando BSPWM ... ";
install_bspwm
echo -e "${greenColour} (INSTALLED) ${endColour}";

#
# [ * ] INSTALACION SXHKD !
#
echo -en "  ${yellowColour}[ * ]${endColour} Instalando SXHKD ... ";
install_sxhkd
echo -e "${greenColour} (INSTALLED) ${endColour}";

#
# [ * ] INSTALANDO POLYBAR !
#
echo -en "  ${yellowColour}[ * ]${endColour} Instalando polybar ... ";
install_polybar
echo -e  "${greenColour} (INSTALLED) ${endColour}";

#
# [ * ] INSTALANDO FIREWALL - UFW !
#
echo -en "  ${yellowColour}[ * ]${endColour} Instalando firewall - UFW ... ";
install_ufw
echo -e  "${greenColour} (INSTALLED) ${endColour}";

#
# [ * ] INSTALANDO TCLKIT - Dependencia de xampp !
#
echo -en "  ${yellowColour}[ * ]${endColour} Instalando TCLKIT... ";
install_tclkit
echo -e "${greenColour} (INSTALLED) ${endColour}";

#
# [ * ] INSTALANDO SDX - Dependencia de Xampp !
#
echo -en "  ${yellowColour}[ * ]${endColour} Instalando SDX... ";
install_sdx
echo -e "${greenColour} (INSTALLED) ${endColour}";

#
# [ * ] ASIGNANDO PERMISOS !
#
echo -e "\n  ${yellowColour}[ * ] ${endColour} Permisos..."
echo -en "\t ==> Asignando permisos correctos a los archivos ...";
configure_perms
echo -e " ${greenColour}(CONFIGURED)${endColour}";

#
# [ * ] ACTUALIZANDO EL SISTEMA ...
#
echo -en "  ${yellowColour}[ * ]${endColour} Actualizando el sistema... ";
pacman -Syu --noconfirm > /dev/null 2>&1;
echo -e "${greenColour}(UPDATED)${endColour}"
echo "";

#
# [ * ] ENTORNO DE TRABAJO LISTO !
#
echo -e "\n\n################### ${greenColour} ENTORNO DE TRABAJO LISTO ${endColour} ###################";
echo -e "\n";

#
# [ * ] ACTIVANDO GDM !
#		==> Descomentar para habilitar GDM
# echo -en "  ${yellowColour}[ * ]${endColour} ACTIVANDO GDM ...";
# activate_gdm

#
# [ * ] ACTIVANDO CURSOR !
#
tput cvvis

#
# [ * ] DORMIMOS EL PROGRAMA 4.5s !
#
# sleep 4.5s

#
# [ * ] INICIAMOS LA INTERFACE GRÁFICA !
#		==> Descomentar para ejecutar GDM
# systemctl start gdm.service > /dev/null 2>&1;

#
# [ * ] TERMINAMOS EL PROGRAMA !
#
exit 0

