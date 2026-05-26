#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/config.sh"

clear

echo ""
case $language in
	pt-br) 
		echo -e "$blue Bem Vindo ao NuxTool 3.0 $fcolor";;
	*) 
		echo -e "$blue Welcome NuxTool 3.0 $fcolor";;
esac

# ----------
# Functions
# ----------

function error() {
	case $language in
		pt-br) 
			echo -e "$red Ops, Comando inválido!. $fcolor Verifique se o Caps Lock está ativado";;
		*) 
			echo -e "$red Oops, Invalid command!. $fcolor Make sure the Caps Lock is enabled";;
	esac
}

function helpnow() {
	echo ""
	case $language in
		pt-br) 
			echo -e "$bggreen Módulos NuxTool $fcolor";;
		*) 
			echo -e "$bggreen Modules NuxTool $fcolor";;
	esac

	echo ""

	for entry in "$SCRIPT_DIR/modules"/*/; do
		source "$entry/help.sh"
	done

	echo ""
	case $language in
		pt-br) 
			echo -e "$bggreen Outros $fcolor";;
		*) 
			echo -e "$bggreen Others $fcolor";;
	esac
	echo ""

	case $language in
		pt-br) 
			echo -e "$green exit $fcolor - Sair do Programa";;
		*) 
			echo -e "$green exit $fcolor - Exit Program";;
	esac
}

function loadmodule() {
	local modfile="$SCRIPT_DIR/modules/$module/module.sh"
	if [ -f "$modfile" ]; then
		source "$modfile"
	else
		error
	fi
}

function out() {
	case $language in
		pt-br) 
			echo -e "Obrigado por usar o NuxTool! $red Encerrando [...] $fcolor";;
		*) 
			echo -e "Thank you for using NuxTool! $red closing [...] $fcolor";;
	esac

	echo ""

	exit
}

# ----------
# Main Loop
# ----------

while true; do
	echo ""
	read -p "> " module
	echo ""

	case $module in
		help) helpnow ;;
		exit|quit) out ;;
		"") continue ;;
		*) loadmodule ;;
	esac
done