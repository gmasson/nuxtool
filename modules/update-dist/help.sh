#!/bin/bash

case $language in
	pt-br) echo -e "$green update-dist $fcolor - Atualiza sua distribuição" ;;
	*) echo -e "$green update-dist $fcolor - Updates its distribution" ;;
esac