#!/bin/bash

source "modules/install/softwares.sh"


function studio() {
  sudo apt-get update

  gimp
  inkscape
  blender
  audacity
  openshot
  pitivi
  audacious
  vlc
  k3b
  avidemux
  scribus
  cheese

  echo ""
  echo -e "$bggreen OK $fcolor"
  echo ""
  menu
}

function game() {
  sudo apt-get update

  java
  steam
  wine
  supertuxkart
  dreamchess
  kcheckers
  flightgear
  zsnes
  stella
  pcsxr
  kdegames

  echo ""
  echo -e "$bggreen OK $fcolor"
  echo ""
  menu
}

function serv() {
  sudo apt-get update

  apache2
  nginx
  mysql
  php5
  nodejs
  npm
  nano
  git
  proftpd 
  phpmyadmin
  samba

  echo ""
  echo -e "$bggreen OK $fcolor"
  echo ""
  menu
}

function dev() {
  sudo apt-get update

  filezilla
  wireshark
  workbench
  vim
  nano
  atom
  sublime
  putty
  umbrello
  firefox
  opera
  chromium

  echo ""
  echo -e "$bggreen OK $fcolor"
  echo ""
  menu
}

function elet() {
  sudo apt-get update

  arduino
  fritzing
  pcb
  gresistor

  echo ""
  echo -e "$bggreen OK $fcolor"
  echo ""
  menu
}

function home() {
  sudo apt-get update

  java
  rar
  skype
  tuxpaint
  libreoffice
  acetoneiso
  uget
  alarm
  sysinfo
  calibre
  smplayer
  avidemux
  transmission
  thunderbird
  firefox
  opera
  chromium
  openshot
  vlc
  k3b
  wine

  echo ""
  echo -e "$bggreen OK $fcolor"
  echo ""
  menu
}


function errormodule() {
  case $language in
    pt-br) 
      echo -e "$red Ops, Comando inválido!.";;
    *) 
      echo -e "$red Oops, Invalid command!.";;
  esac

  # menu
  menu
}

menumodule() {
  echo ""

  case $language in
    pt-br) 
      echo -e "$green studio $fcolor - Programas para edições de audio e vídeo"
      echo -e "$green game $fcolor - Jogos e emuladores"
      echo -e "$green serv $fcolor - Programas para Servidores"
      echo -e "$green dev $fcolor - Programas para Desenvolvedores"
      echo -e "$green elet $fcolor - Programas relacionados á Eletrônica"
      echo -e "$green home $fcolor - Programas para uso pessoal";;
    *) 
      echo -e "$green studio $fcolor - Programas para edições de audio e vídeo"
      echo -e "$green game $fcolor - Jogos e emuladores"
      echo -e "$green serv $fcolor - Programas para Servidores"
      echo -e "$green dev $fcolor - Programas para Desenvolvedores"
      echo -e "$green elet $fcolor - Programas relacionados á Eletrônica"
      echo -e "$green home $fcolor - Programas para uso pessoal";;
  esac

  echo ""
  read -p ">>" packsoftware;

  case $packsoftware in
    $packsoftware) $packsoftware ;;
    *) errormodule ;;
  esac
}

# Executa o menu
menumodule