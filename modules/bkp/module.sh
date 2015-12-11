#!/bin/bash

echo ""

echo -e "$azul Deseja copiar um único arquivo? (s/n)$fimcor"

read -p "= " confim;

if [[ $confim == "s" ]]; then

  echo "Qual o caminho do arquivo que deseja copiar?"

  read pathcopy;

  echo "Qual o caminho do destino desse arquivo?"

  read path;

  cp $pathcopy $path

  echo ""

else

  echo "Qual o caminho da pasta que deseja copiar?"

  read pathcopy;

  echo "Qual o caminho do destino desta pasta?"

  read path;

  cp -r $pathcopy $path

  echo ""
  
fi

menu