#!/bin/bash

case $language in
	pt-br) echo -e "$green update $fcolor - Atualiza a lista e instala atualizações do sistema" ;;
	*) echo -e "$green update $fcolor - Updates the package list and installs system updates" ;;
esac