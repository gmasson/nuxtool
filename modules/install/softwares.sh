#!/bin/bash

# Verifica se snap está disponível antes de instalar via snap
function _require_snapd() {
	if ! command -v snap &>/dev/null; then
		case $language in
			pt-br) echo -e "$red Snap não disponível neste sistema. Instale com: sudo apt install snapd $fcolor" ;;
			*) echo -e "$red Snap is not available. Install it with: sudo apt install snapd $fcolor" ;;
		esac
		return 1
	fi
}

function gimp() {
	echo ""
	echo "Deseja instalar o GIMP? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- GIMP --------------"
		sudo apt install gimp
	fi
}

function inkscape() {
	echo ""
	echo "Deseja instalar o INKSCAPE? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- INKSCAPE --------------"
		sudo apt install inkscape
	fi
}

function blender() {
	echo ""
	echo "Deseja instalar o BLENDER? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- BLENDER --------------"
		sudo apt install blender
	fi
}

function audacity() {
	echo ""
	echo "Deseja instalar o AUDACITY? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- AUDACITY --------------"
		sudo apt install audacity
	fi
}

function openshot() {
	echo ""
	echo "Deseja instalar o OPENSHOT? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- OPENSHOT --------------"
		sudo apt install -y openshot-qt
	fi
}

function audacious() {
	echo ""
	echo "Deseja instalar o AUDACIOUS? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- AUDACIOUS --------------"
		sudo apt install audacious
	fi
}

function vlc() {
	echo ""
	echo "Deseja instalar o VLC PLAYER? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- VLC PLAYER --------------"
		sudo apt install vlc
	fi
}

function avidemux() {
	echo ""
	echo "Deseja instalar o AVIDEMUX? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- AVIDEMUX --------------"
		sudo apt install avidemux
	fi
}

function cheese() {
	echo ""
	echo "Deseja instalar o CHEESE? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- CHEESE --------------"
		sudo apt install cheese
	fi
}

function java() {
	echo ""
	echo "Deseja instalar o JAVA? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- JAVA --------------"
		sudo apt install default-jre
	fi
}

function steam() {
	echo ""
	echo "Deseja instalar o STEAM? (y/n)"
	read -p "= " confim;
	if [[ $confim =~ ^[Yy]$ ]]; then
		echo " -------------- STEAM --------------"
		sudo dpkg --add-architecture i386
		sudo apt update
		sudo apt install -y steam-installer
	fi
}

function wine() {
	echo ""
	echo "Deseja instalar o WINE / LUTRIS? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo -e " -------------- WINE / LUTRIS --------------"
		sudo dpkg --add-architecture i386
		sudo apt update
		sudo apt install -y wine wine32 wine64
		sudo apt install -y lutris
	fi
}

function dreamchess() {
	echo ""
	echo "Deseja instalar o DREAM CHESS? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- DREAM CHESS --------------"
		sudo apt install dreamchess
	fi
}

function kcheckers() {
	echo ""
	echo "Deseja instalar o KCHECKERS? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- KCHECKERS --------------"
		sudo apt install kcheckers
	fi
}

function zsnes() {
	echo ""
	echo "Deseja instalar o SNES9X - Emulador Super Nintendo? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- SNES9X - Emulador Super Nintendo --------------"
		sudo apt install -y snes9x-gtk
	fi
}

function stella() {
	echo ""
	echo "Deseja instalar o STELA - Emulador Atari? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- STELA - Emulador Atari --------------"
		sudo apt install stella
	fi
}

function pcsxr() {
	echo ""
	echo "Deseja instalar o PCSX2 - Emulador PS2/PS1? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- PCSX2 - Emulador PS2/PS1 --------------"
		sudo apt install -y pcsx2
	fi
}

function apache2() {
	echo ""
	echo "Deseja instalar o APACHE? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- APACHE --------------"
		sudo apt install apache2
	fi
}
	
function nginx() {
	echo ""
	echo "Deseja instalar o NGINX? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- NGINX --------------"
		sudo apt install nginx
	fi
}

function mysql() {
	echo ""
	echo "Deseja instalar o MariaDB? (y/n)"
	read -p "= " confim;
	if [[ $confim =~ ^[Yy]$ ]]; then
		echo " -------------- MariaDB --------------"
		sudo apt install -y mariadb-server mariadb-client
		echo ""
		case $language in
			pt-br) echo "Executando configuração de segurança inicial (siga as instruções)..." ;;
			*) echo "Running initial security setup (follow the prompts)..." ;;
		esac
		sleep 1
		sudo mysql_secure_installation
	fi
}

function php() {
	echo ""
	echo "Deseja instalar o PHP? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- PHP --------------"
		sudo apt install -y php libapache2-mod-php php-mysql php-curl php-mbstring php-xml php-zip
	fi
}
	
function nodejs() {
	echo ""
	echo "Deseja instalar o NODE.JS LTS (via NodeSource)? (y/n)"
	read -p "= " confim;
	if [[ $confim =~ ^[Yy]$ ]]; then
		echo " -------------- NODE.JS LTS --------------"
		if ! command -v curl &>/dev/null; then
			sudo apt install -y curl
		fi
		curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
		sudo apt install -y nodejs
	fi
}
	
function npm() {
	echo ""
	case $language in
		pt-br) echo "O npm é instalado automaticamente com Node.js via NodeSource. Use a opção 'nodejs'." ;;
		*) echo "npm is automatically included with Node.js via NodeSource. Use the 'nodejs' option." ;;
	esac
}

function nano() {
	echo ""
	echo "Deseja instalar o NANO? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- NANO --------------"
		sudo apt install nano
	fi
}

function git() {
	echo ""
	echo "Deseja instalar o GIT? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- GIT --------------"
		sudo apt install git
	fi
}

function proftpd() {
	echo ""
	echo "Deseja instalar o FTP? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- FTP --------------"
		sudo apt install proftpd 
	fi
}

function phpmyadmin() {
	echo ""
	echo "Deseja instalar o PHPMYADMIN? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- PHPMYADMIN --------------"
		sudo apt install phpmyadmin
	fi
}

function filezilla() {
	echo ""
	echo "Deseja instalar o FILEZILLA? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- FILEZILLA --------------"
		sudo apt install filezilla
	fi
}

function wireshark() {
	echo ""
	echo "Deseja instalar o WIRESHARK? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- WIRESHARK --------------"
		sudo apt install wireshark
	fi
}

function workbench() {
	echo ""
	echo "Deseja instalar o MYSQL WORKBENCH? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- MYSQL WORKBENCH --------------"
		sudo apt install -y mysql-workbench
	fi
}

function vim() {
	echo ""
	echo "Deseja instalar o VIM? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- VIM --------------"
		sudo apt install vim
	fi
}

function vscode() {
	echo ""
	echo "Deseja instalar o VS CODE? (y/n)"
	read -p "= " confim;
	if [[ $confim =~ ^[Yy]$ ]]; then
		_require_snapd || return
		echo " -------------- VS CODE --------------"
		sudo snap install code --classic
	fi
}

function sublime() {
	echo ""
	echo "Deseja instalar o SUBLIME TEXT? (y/n)"
	read -p "= " confim;
	if [[ $confim =~ ^[Yy]$ ]]; then
		_require_snapd || return
		echo " -------------- SUBLIME TEXT --------------"
		sudo snap install sublime-text --classic
	fi
}

function putty() {
	echo ""
	echo "Deseja instalar o PUTTY? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- PUTTY --------------"
		sudo apt install putty
	fi
}

function firefox() {
	echo ""
	echo "Deseja instalar o FIREFOX? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- FIREFOX --------------"
		sudo apt install firefox
	fi
}

function opera() {
	echo ""
	echo "Deseja instalar o OPERA? (y/n)"
	read -p "= " confim;
	if [[ $confim =~ ^[Yy]$ ]]; then
		_require_snapd || return
		echo " -------------- OPERA --------------"
		sudo snap install opera
	fi
}

function chromium() {
	echo ""
	echo "Deseja instalar o CHROMIUM? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- CHROMIUM --------------"
		sudo apt install chromium
	fi
}

function skype() {
	echo ""
	echo "Deseja instalar o TELEGRAM? (y/n)"
	read -p "= " confim;
	if [[ $confim =~ ^[Yy]$ ]]; then
		_require_snapd || return
		echo " -------------- TELEGRAM --------------"
		sudo snap install telegram-desktop
	fi
}

function libreoffice() {
	echo ""
	echo "Deseja instalar o LIBREOFFICE? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- LIBREOFFICE --------------"
		sudo apt install libreoffice
	fi
}

function acetoneiso() {
	echo ""
	echo "Deseja instalar o FUSEISO (montagem de imagens ISO)? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- FUSEISO --------------"
		sudo apt install -y fuseiso
	fi
}

function uget() {
	echo ""
	echo "Deseja instalar o UGET? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- UGET --------------"
		sudo apt install uget
	fi
}

function alarm() {
	echo ""
	echo "Deseja instalar o GNOME CLOCKS? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- GNOME CLOCKS --------------"
		sudo apt install -y gnome-clocks
	fi
}

function sysinfo() {
	echo ""
	echo "Deseja instalar o FASTFETCH (informacoes do sistema)? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- FASTFETCH --------------"
		sudo apt install -y fastfetch
	fi
}

function smplayer() {
	echo ""
	echo "Deseja instalar o SMPLAYER? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- SMPLAYER --------------"
		sudo apt install smplayer
	fi
}

function transmission() {
	echo ""
	echo "Deseja instalar o TRANSMISSION? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- TRANSMISSION --------------"
		sudo apt install transmission
	fi
}

function thunderbird() {
	echo ""
	echo "Deseja instalar o THUNDERBIRD? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- THUNDERBIRD --------------"
		sudo apt install -y thunderbird
	fi
}

function htop() {
	echo ""
	echo "Deseja instalar o HTOP (monitor de processos)? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- HTOP --------------"
		sudo apt install -y htop
	fi
}

function btop() {
	echo ""
	echo "Deseja instalar o BTOP (monitor de recursos moderno)? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- BTOP --------------"
		sudo apt install -y btop
	fi
}

function fastfetch() {
	echo ""
	echo "Deseja instalar o FASTFETCH (informacoes do sistema)? (y/n)"
	read -p "= " confim;
	if [[ $confim == "y" ]]; then
		echo " -------------- FASTFETCH --------------"
		sudo apt install -y fastfetch
	fi
}

function discord() {
	echo ""
	echo "Deseja instalar o DISCORD? (y/n)"
	read -p "= " confim;
	if [[ $confim =~ ^[Yy]$ ]]; then
		_require_snapd || return
		echo " -------------- DISCORD --------------"
		sudo snap install discord
	fi
}

function chrome() {
	echo ""
	echo "Deseja instalar o GOOGLE CHROME? (y/n)"
	read -p "= " confim;
	if [[ $confim =~ ^[Yy]$ ]]; then
		echo " -------------- GOOGLE CHROME --------------"
		if ! command -v curl &>/dev/null; then
			sudo apt install -y curl
		fi
		sudo install -dm 755 /etc/apt/keyrings
		curl -fsSL https://dl.google.com/linux/linux_signing_key.pub \
			| sudo gpg --dearmor -o /etc/apt/keyrings/google-chrome.gpg
		echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/google-chrome.gpg] https://dl.google.com/linux/chrome/deb/ stable main" \
			| sudo tee /etc/apt/sources.list.d/google-chrome.list > /dev/null
		sudo apt update
		sudo apt install -y google-chrome-stable
	fi
}

function zoom() {
	echo ""
	echo "Deseja instalar o ZOOM? (y/n)"
	read -p "= " confim;
	if [[ $confim =~ ^[Yy]$ ]]; then
		_require_snapd || return
		echo " -------------- ZOOM --------------"
		sudo snap install zoom-client
	fi
}