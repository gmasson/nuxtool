#!/bin/bash

function all() {
	echo "Exibindo Informações gerais"
	uname -a
	sleep 1

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
	menu
}

function cpu() {
	echo "Exibindo Informações do Processador"
	cat /proc/cpuinfo
	sleep 1

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
	menu
}

function net() {
	echo "Exibindo Informações de Rede"
	ifconfig
	sleep 1

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
	menu
}

function memo() {
	echo "Exibindo Informações da Memória"
	free -h
	sleep 1

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
	menu
}

function hd() {
	echo "Exibindo Informações do HD"
	df
	echo ""
	echo -e "$azul Deseja visualizar a lista de pastas do HD? (s/n)$fimcor"
	read -p "= " confim;
	if [[ $confim == "s" ]]; then
		echo " -------------- PASTAS --------------"
		du
	fi
	sleep 1

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
	menu
}

function user() {
	echo "Exibindo Informações de Usuários Logados"
	free -h
	sleep 1

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
	menu
}

function proc() {
	echo "Exibindo Processos atuais"
	echo ""
	echo "OBSERVAÇÃO: Após a verificação dos processos,"
	echo "aperte CTRL C para sair."
	echo ""
	echo "Iniciando..."
	sleep 3
	top

	echo ""
	echo -e "$bggreen OK $fcolor"
	echo ""
	menu
}


function errormodule() {
	case $language in
		pt-br) 
			echo -e "$red Ops, Comando inválido!.";;
		*) 
			echo -e "$red Oops, Invalid command!.";;
	esac

	# menu
	menu
}

menumodule() {
	echo ""

	case $language in
		pt-br) 
			echo -e "$green all $fcolor - Informações sobre seu computador"
			echo -e "$green cpu $fcolor - Informações sobre o Processador"
			echo -e "$green net $fcolor - Informações sobre sua Rede"
			echo -e "$green memo $fcolor - Informações sobre a Memória RAM"
			echo -e "$green hd $fcolor - Informações sobre o seu HD"
			echo -e "$green user $fcolor - Informações sobre os Usuários do computador"
			echo -e "$green proc $fcolor - Informações sobre o Processos atuais";;
		*) 
			echo -e "$green all $fcolor - Informações sobre seu computador"
			echo -e "$green cpu $fcolor - Informações sobre o Processador"
			echo -e "$green net $fcolor - Informações sobre sua Rede"
			echo -e "$green memo $fcolor - Informações sobre a Memória RAM"
			echo -e "$green hd $fcolor - Informações sobre o seu HD"
			echo -e "$green user $fcolor - Informações sobre os Usuários do computador"
			echo -e "$green proc $fcolor - Informações sobre o Processos atuais";;
	esac

	echo ""
	read -p ">>" packsoftware;

	case $packsoftware in
		$packsoftware) $packsoftware ;;
		*) errormodule ;;
	esac
}

# Executa o menu
menumodule