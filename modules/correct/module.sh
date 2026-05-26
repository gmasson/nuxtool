#!/bin/bash

echo ""
case $language in
	pt-br) echo -e "$blue ===== Correção e reparo do sistema ===== $fcolor" ;;
	*) echo -e "$blue ===== System repair and fix ===== $fcolor" ;;
esac
echo ""

case $language in
	pt-br) echo -e "$green [1/5] Verificando integridade dos pacotes... $fcolor" ;;
	*) echo -e "$green [1/5] Checking package integrity... $fcolor" ;;
esac
sudo apt-get check
if [[ $? -eq 0 ]]; then echo -e "$green  ✓ OK $fcolor"; else echo -e "$red  ✗ Problemas detectados, continuando reparos... $fcolor"; fi

echo ""
case $language in
	pt-br) echo -e "$green [2/5] Reconfigurando pacotes interrompidos... $fcolor" ;;
	*) echo -e "$green [2/5] Reconfiguring interrupted packages... $fcolor" ;;
esac
sudo dpkg --configure -a
echo -e "$green  ✓ OK $fcolor"

echo ""
case $language in
	pt-br) echo -e "$green [3/5] Corrigindo dependências quebradas... $fcolor" ;;
	*) echo -e "$green [3/5] Fixing broken dependencies... $fcolor" ;;
esac
sudo apt --fix-broken install -y
echo -e "$green  ✓ OK $fcolor"

echo ""
case $language in
	pt-br) echo -e "$green [4/5] Removendo pacotes desnecessários... $fcolor" ;;
	*) echo -e "$green [4/5] Removing unnecessary packages... $fcolor" ;;
esac
sudo apt autoremove -y
sudo apt clean
echo -e "$green  ✓ OK $fcolor"

echo ""
case $language in
	pt-br) echo -e "$green [5/5] Atualizando lista de pacotes... $fcolor" ;;
	*) echo -e "$green [5/5] Updating package list... $fcolor" ;;
esac
sudo apt update
echo -e "$green  ✓ OK $fcolor"

echo ""
echo -e "$bggreen ✓ Reparo concluído! $fcolor"
echo ""