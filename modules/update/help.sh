#!/bin/bash

case $language in
	pt-br) echo -e "$green update $fcolor - Faz um Update" ;;
	*) echo -e "$green update $fcolor - Is an Update" ;;
esac