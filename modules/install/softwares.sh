#!/bin/bash

function gimp() {
	echo ""
	echo "Deseja instalar o GIMP? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- GIMP --------------"
		sudo apt-get install gimp
	fi
}

function inkscape() {
	echo ""
	echo "Deseja instalar o INKSCAPE? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- INKSCAPE --------------"
		sudo apt-get install inkscape
	fi
}

function blender() {
	echo ""
	echo "Deseja instalar o BLENDER? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- BLENDER --------------"
		sudo apt-get install blender
	fi
}

function audacity() {
	echo ""
	echo "Deseja instalar o AUDACITY? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- AUDACITY --------------"
		sudo apt-get install audacity
	fi
}

function openshot() {
	echo ""
	echo "Deseja instalar o OPENSHOT? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- OPENSHOT --------------"
		sudo apt-get install openshot
	fi
}

function pitivi() {
	echo ""
	echo "Deseja instalar o PIVITI? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- PIVITI --------------"
		sudo apt-get install pitivi
	fi
}

function audacious() {
	echo ""
	echo "Deseja instalar o AUDACIOUS? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- AUDACIOUS --------------"
		sudo apt-get install audacious
	fi
}

function vlc() {
	echo ""
	echo "Deseja instalar o VLC PLAYER? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- VLC PLAYER --------------"
		sudo apt-get install vlc
	fi
}

function k3b() {
	echo ""
	echo "Deseja instalar o K3B? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- K3B --------------"
		sudo apt-get install k3b
	fi
}

function avidemux() {
	echo ""
	echo "Deseja instalar o AVIDEMUX? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- AVIDEMUX --------------"
		sudo apt-get install avidemux
	fi
}

function scribus() {
	echo ""
	echo "Deseja instalar o SCRIBUS? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- SCRIBUS --------------"
		sudo apt-get install scribus
	fi
}

function cheese() {
	echo ""
	echo "Deseja instalar o CHEESE? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- CHEESE --------------"
		sudo apt-get install cheese
	fi
}

function java() {
	echo ""
	echo "Deseja instalar o JAVA? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- JAVA --------------"
		sudo apt-get install default-jre
	fi
}

function steam() {
	echo ""
	echo "Deseja instalar o STEAM? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- STEAM --------------"
		sudo apt-get install steam
	fi
}

function wine() {
	echo ""
	echo "Deseja instalar o WINE / PLAYONLINUX? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo -e " -------------- WINE / PLAYONLINUX --------------"
		sudo apt-get install wine
		sudo apt-get install playonlinux
	fi
}

function supertuxkart() {
	echo ""
	echo "Deseja instalar o SUPER TUX KART? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- SUPER TUX KART --------------"
		sudo apt-get install supertuxkart
	fi
}

function dreamchess() {
	echo ""
	echo "Deseja instalar o DREAM CHESS? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- DREAM CHESS --------------"
		sudo apt-get install dreamchess
	fi
}

function kcheckers() {
	echo ""
	echo "Deseja instalar o KCHECKERS? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- KCHECKERS --------------"
		sudo apt-get install kcheckers
	fi
}

function flightgear() {
	echo ""
	echo "Deseja instalar o FLIGHT GEAR? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- FLIGHT GEAR --------------"
		sudo apt-get install flightgear
	fi
}

function zsnes() {
	echo ""
	echo "Deseja instalar o ZSNES - Emulador Super Nintendo? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- ZSNES - Emulador Super Nintendo --------------"
		sudo apt-get install zsnes
	fi
}

function stella() {
	echo ""
	echo "Deseja instalar o STELA - Emulador Atari? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- STELA - Emulador Atari --------------"
		sudo apt-get install stella
	fi
}

function pcsxr() {
	echo ""
	echo "Deseja instalar o PCSXR - Emulador PS1? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- PCSXR - Emulador PS1 --------------"
		sudo apt-get install pcsxr
	fi
}

function kdegames() {
	echo ""
	echo "Deseja instalar o KDE GAMES? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- KDE GAMES --------------"
		sudo apt-get install kdegames
	fi
}

function apache2() {
	echo ""
	echo "Deseja instalar o APACHE? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- APACHE --------------"
		sudo apt-get install apache2
	fi
}
	
function nginx() {
	echo ""
	echo "Deseja instalar o NGINX? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- NGINX --------------"
		sudo apt-get install nginx
	fi
}

function mysql() {
	echo ""
	echo "Deseja instalar o MYSQL? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- MYSQL --------------"
		sudo apt-get install mysql-server php5-mysql
		sudo mysql_install_db
		sudo mysql_secure_installation
	fi
}

function mysql() {
	echo ""
	echo "Deseja instalar o MariaDB? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- Instalando --------------"
		sudo apt-get install mariadb-server mariadb-client
		sudo mysql_secure_installation
		sudo /etc/init.d/apache2 restart
	fi
}

function php5() {
	echo ""
	echo "Deseja instalar o PHP? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- PHP --------------"
		sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
		sudo apt-get install php5-curl
	fi
}
	
function nodejs() {
	echo ""
	echo "Deseja instalar o NODEJS? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- NODEJS --------------"
		sudo apt-get install nodejs
	fi
}
	
function npm() {
	echo ""
	echo "Deseja instalar o NPM? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- NPM --------------"
		sudo apt-get install npm
	fi
}

function nano() {
	echo ""
	echo "Deseja instalar o NANO? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- NANO --------------"
		sudo apt-get install nano
	fi
}

function git() {
	echo ""
	echo "Deseja instalar o GIT? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- GIT --------------"
		sudo apt-get install git
	fi
}

function proftpd() {
	echo ""
	echo "Deseja instalar o FTP? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- FTP --------------"
		sudo apt-get install proftpd 
	fi
}

function phpmyadmin() {
	echo ""
	echo "Deseja instalar o PHPMYADMIN? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- PHPMYADMIN --------------"
		sudo apt-get install phpmyadmin
	fi
}

function samba() {
	echo ""
	echo "Deseja instalar o SAMBA? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- SAMBA --------------"
		sudo apt-get install samba
	fi
}

function filezilla() {
	echo ""
	echo "Deseja instalar o FILEZILLA? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- FILEZILLA --------------"
		sudo apt-get install filezilla
	fi
}

function wireshark() {
	echo ""
	echo "Deseja instalar o WIRESHARK? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- WIRESHARK --------------"
		sudo apt-get install wireshark
	fi
}

function workbench() {
	echo ""
	echo "Deseja instalar o MYSQL WORKBENCH? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- MYSQL WORKBENCH --------------"
		sudo apt-get install mysql-workbench mysql-workbench-data
	fi
}

function vim() {
	echo ""
	echo "Deseja instalar o VIM? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- VIM --------------"
		sudo apt-get install vim
	fi
}

function atom() {
	echo ""
	echo "Deseja instalar o ATOM? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- ATOM --------------"
		sudo apt-get install atom
	fi
}

function sublime() {
	echo ""
	echo "Deseja instalar o SUBLIME TEXT? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- SUBLIME TEXT --------------"
		sudo apt-get install sublime-text
	fi
}

function putty() {
	echo ""
	echo "Deseja instalar o PUTTY? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- PUTTY --------------"
		sudo apt-get install putty
	fi
}

function umbrello() {
	echo ""
	echo "Deseja instalar o UMBRELLO? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- UMBRELLO --------------"
		sudo apt-get install umbrello
	fi
}

function arduino() {
	echo ""
	echo "Deseja instalar o ARDUINO? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- ARDUINO --------------"
		sudo apt-get install arduino
		sudo apt-get install gcc-avr
		sudo apt-get install avr-libc
	fi
}

function fritzing() {
	echo ""
	echo "Deseja instalar o FRITZING? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- FRITZING --------------"
		sudo apt-get install fritzing
	fi
}

function pcb() {
	echo ""
	echo "Deseja instalar o PCB? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- PCB --------------"
		sudo apt-get install pcb
	fi
}

function gresistor() {
	echo ""
	echo "Deseja instalar o GRESISTOR? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- GRESISTOR --------------"
		sudo apt-get install gResistor
	fi
}

function firefox() {
	echo ""
	echo "Deseja instalar o FIREFOX? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- FIREFOX --------------"
		sudo apt-get install firefox
	fi
}

function opera() {
	echo ""
	echo "Deseja instalar o OPERA? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- OPERA --------------"
		sudo apt-get install opera
	fi
}

function chromium() {
	echo ""
	echo "Deseja instalar o CHROMIUM? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- CHROMIUM --------------"
		sudo apt-get install chromium
	fi
}

function rar() {
	echo ""
	echo "Deseja instalar o RAR? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- RAR --------------"
		sudo apt-get install rar
	fi
}

function skype() {
	echo ""
	echo "Deseja instalar o SKYPE? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- SKYPE --------------"
		sudo apt-get install skype
	fi
}

function tuxpaint() {
	echo ""
	echo "Deseja instalar o TUXPAINT? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- TUXPAINT --------------"
		sudo apt-get install tuxpaint
	fi
}

function libreoffice() {
	echo ""
	echo "Deseja instalar o LIBREOFFICE? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- LIBREOFFICE --------------"
		sudo apt-get install libreoffice
	fi
}

function acetoneiso() {
	echo ""
	echo "Deseja instalar o ACETONEISO? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- ACETONEISO --------------"
		sudo apt-get install AcetoneISO
	fi
}

function uget() {
	echo ""
	echo "Deseja instalar o UGET? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- UGET --------------"
		sudo apt-get install uget
	fi
}

function alarm() {
	echo ""
	echo "Deseja instalar o ALARM CLOCK? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- ALARM CLOCK --------------"
		sudo apt-get install alarm-clock
	fi
}

function sysinfo() {
	echo ""
	echo "Deseja instalar o SYSINFO? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- SYSINFO --------------"
		sudo apt-get install sysinfo
	fi
}

function calibre() {
	echo ""
	echo "Deseja instalar o CALIBRE? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- CALIBRE --------------"
		sudo apt-get install calibre
	fi
}

function smplayer() {
	echo ""
	echo "Deseja instalar o SMPLAYER? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- SMPLAYER --------------"
		sudo apt-get install smplayer
	fi
}

function transmission() {
	echo ""
	echo "Deseja instalar o TRANSMISSION? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- TRANSMISSION --------------"
		sudo apt-get install transmission
	fi
}

function thunderbird() {
	echo ""
	echo "Deseja instalar o THUNDERBIRD? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- THUNDERBIRD --------------"
		sudo apt-get install thunderbird
	fi
}