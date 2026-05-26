#!/bin/bash

echo ""
case $language in
	pt-br) echo -e "$blue ===== Atualizando o sistema ===== $fcolor" ;;
	*) echo -e "$blue ===== Updating the system ===== $fcolor" ;;
esac
echo ""

case $language in
	pt-br) echo -e "$green [1/2] Buscando atualizações disponíveis... $fcolor" ;;
	*) echo -e "$green [1/2] Fetching available updates... $fcolor" ;;
esac
sudo apt update

echo ""
case $language in
	pt-br) echo -e "$green [2/2] Instalando atualizações (incluindo segurança)... $fcolor" ;;
	*) echo -e "$green [2/2] Installing updates (including security)... $fcolor" ;;
esac
sudo apt upgrade -y

if [[ $? -eq 0 ]]; then
	echo ""
	echo -e "$bggreen ✓ Sistema atualizado com sucesso! $fcolor"
else
	echo ""
	echo -e "$bgred ✗ Ocorreu um erro durante a atualização. $fcolor"
fi

echo ""