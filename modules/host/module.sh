#!/bin/bash


function new() {
echo ""
  echo "Informe o nome do servidor (Ex.: nomedosite) :"
  read vhost
   
  echo "Informe o caminho da pasta do site (Ex.: nomedosite), lembrando que a pasta já precisa existir:"
  echo ""
  echo -e "OBS: caso sua pasta padrão para os arquivos esteja em $verm /var/www/html/ $fimcor informe o caminho da pasta usando $verm html/nomedosite $fimcor"
  echo ""
  read path
   
  echo "$verd Criando configuração de host... $fimcor"
  echo "<VirtualHost *:80>
        ServerAdmin webmaster@localhost
        ServerName $vhost
        ServerAlias www.$vhost 
        DocumentRoot /var/www/$path
       <Directory /var/www/$path>
            Options Indexes FollowSymLinks MultiViews
            AllowOverride All
            Order allow,deny
            Allow from all
         </Directory>
  </VirtualHost>" > /etc/apache2/sites-available/$vhost.conf

  a2ensite $vhost.conf

  echo "127.0.1.1     $vhost www.$vhost" >> /etc/hosts

  service apache2 restart

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
      echo -e "$green new $fcolor - Novo VHOST";;
    *) 
      echo -e "$green new $fcolor - New VHOST";;
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