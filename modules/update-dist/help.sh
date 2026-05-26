#!/bin/bash

case $language in
	pt-br) echo -e "$green update-dist $fcolor - Atualização completa da distribuição (full-upgrade)" ;;
	*) echo -e "$green update-dist $fcolor - Full distribution upgrade (full-upgrade)" ;;
esac