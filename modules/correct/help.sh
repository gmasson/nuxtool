#!/bin/bash

case $language in
  pt-br) echo -e "$green correct $fcolor - Correções de problemas no sistema operacional" ;;
  *) echo -e "$green correct $fcolor - Bug fixes in the OS" ;;
esac