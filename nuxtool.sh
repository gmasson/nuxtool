#!/bin/bash

source "config.sh"

clear

echo ""
case $language in
  pt-br) 
    echo -e "$blue Bem Vindo ao NuxTool 2.0 $fcolor";;
  *) 
    echo -e "$blue Welcome NuxTool 2.0 $fcolor";;
esac

# ---- Functions ----

function error() {
  case $language in
    pt-br) 
      echo -e "$red Ops, Comando inválido!. $fcolor Verifique se o Caps Lock está ativado";;
    *) 
      echo -e "$red Oops, Invalid command!. $fcolor Make sure the Caps Lock is enabled";;
  esac

  # menu
  menu
}

function helpnow() {
  echo ""
  case $language in
    pt-br) 
      echo -e "$bggreen Módulos NuxTool $fcolor";;
    *) 
      echo -e "$bggreen Modules NuxTool $fcolor";;
  esac

  echo ""

  for entry in "modules"/*
  do
    source "$entry/help.sh"
  done

  echo ""
  case $language in
    pt-br) 
      echo -e "$bggreen Outros $fcolor";;
    *) 
      echo -e "$bggreen Others $fcolor";;
  esac
  echo ""

  case $language in
    pt-br) 
      echo -e "$green exit $fcolor - Sair do Programa";;
    *) 
      echo -e "$green exit $fcolor - Exit Program";;
  esac

  # menu
  menu
}

function path() {
  if [ -f "modules/$module/module.sh" ]; then
    source "modules/$module/module.sh"
  else
    error
  fi

  # menu
  menu
}

function out() {
  case $language in
    pt-br) 
      echo -e "Obrigado por usar o NuxTool! $red Encerrando [...] $fcolor";;
    *) 
      echo -e "Thank you for using NuxTool! $red closing [...] $fcolor";;
  esac

  echo ""

  exit
}

# ---- Menu ----

menu() {
  echo ""
  read -p "> " module;
  echo ""

  case $module in
    help) helpnow ;;
    exit) out ;;
    *) path ;;
  esac
}

menu