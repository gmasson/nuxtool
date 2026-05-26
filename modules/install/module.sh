#!/bin/bash

source "$SCRIPT_DIR/modules/install/softwares.sh"

function studio() {
	sudo apt update

	gimp
	inkscape
	blender
	audacity
	openshot
	audacious
	vlc
	avidemux
	cheese

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
}

function game() {
	sudo apt update

	java
	steam
	wine
	dreamchess
	zsnes
	stella
	pcsxr

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
}

function serv() {
	sudo apt update

	apache2
	nginx
	mysql
	php
	nodejs
	npm
	nano
	git
	proftpd
	phpmyadmin

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
}

function dev() {
	sudo apt update

	filezilla
	wireshark
	workbench
	vim
	nano
	vscode
	sublime
	putty
	htop
	btop
	firefox
	opera
	chromium

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
}

function home() {
	sudo apt update

	java
	libreoffice
	uget
	smplayer
	avidemux
	transmission
	thunderbird
	discord
	chrome
	firefox
	openshot
	vlc
	wine

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
}


function errormodule() {
	case $language in
		pt-br) echo -e "$red Ops, Comando inválido!." ;;
		*) echo -e "$red Oops, Invalid command!." ;;
	esac
}

menumodule() {
	while true; do
		echo ""
		case $language in
			pt-br)
				echo -e "$green studio $fcolor - Programas para edição de áudio e vídeo"
				echo -e "$green game $fcolor   - Jogos e emuladores"
				echo -e "$green serv $fcolor   - Ferramentas para servidores"
				echo -e "$green dev $fcolor    - Ferramentas para desenvolvedores"
				echo -e "$green home $fcolor   - Programas para uso pessoal"
				echo -e "$green back $fcolor   - Voltar ao menu principal" ;;
			*)
				echo -e "$green studio $fcolor - Audio and video editing tools"
				echo -e "$green game $fcolor   - Games and emulators"
				echo -e "$green serv $fcolor   - Server tools"
				echo -e "$green dev $fcolor    - Developer tools"
				echo -e "$green home $fcolor   - Personal use software"
				echo -e "$green back $fcolor   - Return to main menu" ;;
		esac

		echo ""
		read -p ">>" subcmd
		echo ""

		case $subcmd in
			studio|game|serv|dev|home) $subcmd ;;
			back|"") return ;;
			*) errormodule ;;
		esac
	done
}

# Executa o menu
menumodule