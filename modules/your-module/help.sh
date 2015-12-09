#!/bin/bash

case $language in
  pt-br) echo -e "$green your-module $fcolor - Descrição do seu módulo" ;;
  *) echo -e "$green your-module $fcolor - Description of your module" ;;
esac