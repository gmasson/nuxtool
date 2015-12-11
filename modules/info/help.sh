#!/bin/bash

case $language in
  pt-br) echo -e "$green info $fcolor - Informações do seu computador" ;;
  *) echo -e "$green info $fcolor - Information from your computer" ;;
esac