#!/bin/bash

function all() {
	case $language in
		pt-br) echo -e "$blue Exibindo informações gerais do sistema... $fcolor" ;;
		*) echo -e "$blue Displaying general system information... $fcolor" ;;
	esac
	uname -a

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
}

function cpu() {
	case $language in
		pt-br) echo -e "$blue Exibindo informações do Processador... $fcolor" ;;
		*) echo -e "$blue Displaying CPU information... $fcolor" ;;
	esac
	lscpu

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
}

function net() {
	case $language in
		pt-br) echo -e "$blue Exibindo informações de Rede... $fcolor" ;;
		*) echo -e "$blue Displaying network information... $fcolor" ;;
	esac
	ip addr show

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
}

function memo() {
	case $language in
		pt-br) echo -e "$blue Exibindo informações da Memória RAM... $fcolor" ;;
		*) echo -e "$blue Displaying RAM memory information... $fcolor" ;;
	esac
	free -h

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
}

function hd() {
	case $language in
		pt-br) echo -e "$blue Exibindo informações de Armazenamento... $fcolor" ;;
		*) echo -e "$blue Displaying storage information... $fcolor" ;;
	esac
	df -h
	echo ""
	case $language in
		pt-br) echo -e "$blue Deseja visualizar o uso de espaço por pasta? (y/n) $fcolor" ;;
		*) echo -e "$blue Do you want to view disk usage per folder? (y/n) $fcolor" ;;
	esac
	read -p "= " confim;
	if [[ $confim =~ ^[Yy]$ ]]; then
		echo ""
		du -h --max-depth=1 "$HOME"
	fi

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
}

function user() {
	case $language in
		pt-br) echo -e "$blue Exibindo usuários logados... $fcolor" ;;
		*) echo -e "$blue Displaying logged-in users... $fcolor" ;;
	esac
	who
	echo ""
	w

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
}

function proc() {
	case $language in
		pt-br)
			echo -e "$blue Exibindo processos atuais... $fcolor"
			echo ""
			echo "Pressione 'q' para sair." ;;
		*)
			echo -e "$blue Displaying current processes... $fcolor"
			echo ""
			echo "Press 'q' to quit." ;;
	esac
	echo ""
	sleep 1
	if command -v htop &>/dev/null; then
		htop
	else
		top
	fi

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
				echo -e "$green all $fcolor   - Informações gerais do computador"
				echo -e "$green cpu $fcolor   - Informações sobre o Processador"
				echo -e "$green net $fcolor   - Informações sobre a Rede"
				echo -e "$green memo $fcolor  - Informações sobre a Memória RAM"
				echo -e "$green hd $fcolor    - Informações sobre o Armazenamento"
				echo -e "$green user $fcolor  - Usuários logados no sistema"
				echo -e "$green proc $fcolor  - Processos em execução"
				echo -e "$green back $fcolor  - Voltar ao menu principal" ;;
			*)
				echo -e "$green all $fcolor   - General computer information"
				echo -e "$green cpu $fcolor   - CPU / Processor information"
				echo -e "$green net $fcolor   - Network information"
				echo -e "$green memo $fcolor  - RAM memory information"
				echo -e "$green hd $fcolor    - Storage / Disk information"
				echo -e "$green user $fcolor  - Logged-in users"
				echo -e "$green proc $fcolor  - Running processes"
				echo -e "$green back $fcolor  - Return to main menu" ;;
		esac

		echo ""
		read -p ">>" subcmd
		echo ""

		case $subcmd in
			all|cpu|net|memo|hd|user|proc) $subcmd ;;
			back|"") return ;;
			*) errormodule ;;
		esac
	done
}

# Executa o menu
menumodule