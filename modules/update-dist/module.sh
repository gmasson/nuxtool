#!/bin/bash

echo ""
case $language in
	pt-br) echo -e "$bgred ⚠  ATENÇÃO: Esta operação irá atualizar pacotes do sistema e pode remover dependências antigas.  ⚠ $fcolor" ;;
	*) echo -e "$bgred ⚠  WARNING: This will upgrade system packages and may remove old dependencies.  ⚠ $fcolor" ;;
esac
echo ""

case $language in
	pt-br) echo -e "$blue Deseja continuar? (y/n) $fcolor" ;;
	*) echo -e "$blue Do you want to continue? (y/n) $fcolor" ;;
esac
read -p "= " confim;

if [[ ! $confim =~ ^[Yy]$ ]]; then
	case $language in
		pt-br) echo "Operação cancelada." ;;
		*) echo "Operation cancelled." ;;
	esac
	echo ""
	return
fi

echo ""
case $language in
	pt-br) echo -e "$blue ===== Atualizando distribuição ===== $fcolor" ;;
	*) echo -e "$blue ===== Upgrading distribution ===== $fcolor" ;;
esac
echo ""

case $language in
	pt-br) echo -e "$green [1/4] Atualizando lista de pacotes... $fcolor" ;;
	*) echo -e "$green [1/4] Updating package list... $fcolor" ;;
esac
sudo apt update

echo ""
case $language in
	pt-br) echo -e "$green [2/4] Aplicando full-upgrade (atualização completa da distribuição)... $fcolor" ;;
	*) echo -e "$green [2/4] Applying full-upgrade (complete distribution upgrade)... $fcolor" ;;
esac
sudo apt full-upgrade -y

echo ""
case $language in
	pt-br) echo -e "$green [3/4] Removendo pacotes obsoletos... $fcolor" ;;
	*) echo -e "$green [3/4] Removing obsolete packages... $fcolor" ;;
esac
sudo apt autoremove -y

echo ""
case $language in
	pt-br) echo -e "$green [4/4] Limpando cache de pacotes... $fcolor" ;;
	*) echo -e "$green [4/4] Cleaning package cache... $fcolor" ;;
esac
sudo apt autoclean

if [[ $? -eq 0 ]]; then
	echo ""
	echo -e "$bggreen ✓ Distribuição atualizada com sucesso! $fcolor"
else
	echo ""
	echo -e "$bgred ✗ Ocorreu um erro durante a atualização. $fcolor"
fi

echo ""