#!/bin/bash
# NuxTool
# https://github.com/gmasson/nuxtool

	sudo apt-get check
	clear
	echo "----------------------------------------"
	echo "Bem Vindo ao NuxTool - 1.0"
	echo "----------------------------------------"

	# ----------------------------------------
	# Funções Correspondentes as ferramentas
	# ----------------------------------------

	function ajuda() {
		echo "-------------------------"
		echo "Como usar o NuxTool 1.0"
		echo "-------------------------"
		menu
	}


	function upg() {
		echo "Atualizando seu sistema (Incluindo atualizações de segurança)"
		sleep 1
		sudo apt-get update
		menu
	}

	function updist() {
		echo "Atualizando sua distribuição"
		sleep 1
		sudo apt-get dist-upgrade
		menu
	}

	function info() {
		echo "Carregando Informações ..."
		sleep 1
		uname -a
		echo ""
		echo "Arquitetura do sistema --------------"
		arch
		sleep 1
		menu
	}

	function error() {
		echo ""
		echo "Ops, Comando inválido, tente novamente!"
		echo "DICAS: "
		echo "- Digite apenas o que está informado antes do hífen [ - ]"
		echo "- Verifique se o Caps Look está ativado"
		sleep 2
		menu
	}

	function out() {
		echo "Obrigado por usar o NuxStart!"
		sleep 1
		echo "Encerrando [...]"
		sleep 1
		exit
	}

	# ----------------------------------------
	# Menu Inicial
	# ----------------------------------------

	menu() {
		echo ""
		echo ""

		read -p ">" pack;

		case $pack in
			ajuda) ajuda ;;
			sair) out ;;
			atual) upg ;;
			atual-dist) updist ;;
			info) info ;;
			*) error ;;
		esac
	}

	# Executa o menu
	menu
