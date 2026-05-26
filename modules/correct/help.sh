#!/bin/bash

case $language in
	pt-br) echo -e "$green correct $fcolor - Repara problemas de pacotes e dependências quebradas" ;;
	*) echo -e "$green correct $fcolor - Repairs broken packages and dependencies" ;;
esac