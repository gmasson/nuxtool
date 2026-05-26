#!/bin/bash

echo ""
case $language in
	pt-br) echo -e "$blue Deseja copiar um único arquivo? (y/n) $fcolor" ;;
	*) echo -e "$blue Do you want to copy a single file? (y/n) $fcolor" ;;
esac
read -p "= " confim;

if [[ $confim == "y" ]]; then
	case $language in
		pt-br) echo "Qual o caminho do arquivo que deseja copiar?" ;;
		*) echo "What is the path of the file you want to copy?" ;;
	esac
	read -r pathcopy;

	if [[ ! -f "$pathcopy" ]]; then
		echo -e "$red Arquivo não encontrado: $pathcopy $fcolor"
		return
	fi

	case $language in
		pt-br) echo "Qual o caminho do destino desse arquivo?" ;;
		*) echo "What is the destination path?" ;;
	esac
	read -r pathdest;

	cp "$pathcopy" "$pathdest"
	if [[ $? -eq 0 ]]; then
		echo -e "$bggreen ✓ Cópia realizada com sucesso! $fcolor"
	else
		echo -e "$bgred ✗ Falha ao copiar o arquivo. $fcolor"
	fi
else
	case $language in
		pt-br) echo "Qual o caminho da pasta que deseja copiar?" ;;
		*) echo "What is the path of the folder you want to copy?" ;;
	esac
	read -r pathcopy;

	if [[ ! -d "$pathcopy" ]]; then
		echo -e "$red Pasta não encontrada: $pathcopy $fcolor"
		return
	fi

	case $language in
		pt-br) echo "Qual o caminho do destino desta pasta?" ;;
		*) echo "What is the destination path?" ;;
	esac
	read -r pathdest;

	cp -r "$pathcopy" "$pathdest"
	if [[ $? -eq 0 ]]; then
		echo -e "$bggreen ✓ Cópia realizada com sucesso! $fcolor"
	else
		echo -e "$bgred ✗ Falha ao copiar a pasta. $fcolor"
	fi
fi

echo ""