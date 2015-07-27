#!/bin/bash
# NuxTool 0.9
# https://github.com/gmasson/nuxstart

sudo apt-get check
clear
echo "----------------------------------------"
echo "Bem Vindo ao NuxTool 0.9"
echo "----------------------------------------"

# ----------------------------------------
# Funções Correspondentes as ferramentas
# ----------------------------------------

function ajuda() {
  echo "-------------------------"
  echo "Como usar o NuxTool 0.9"
  echo "-------------------------"

  echo "Pacotes de Programas para instalação"
  echo "----------------------------------------"
  echo "inst-studio - Estúdio"
  echo "inst-game - Jogos"
  echo "inst-serv - Servidores Web"
  echo "inst-dev - Desenvolvedores"
  echo "inst-sec - Segurança"
  echo "inst-elet - Eletrônica e Engenharia"
  echo "inst-home - Para Casa"
  echo ""

  echo ""

  echo "Ferramentas"
  echo "----------------------------------------"
  echo "atual - Atualiza o sistema (Incluindo atualizações de segurança)"
  echo "atual-dist - Atualiza sua distribuição para a versão mais recente"
  echo "info - Informações sobre sua máquina e o sistema operacional"
  echo "config-serv - Configure seu servidor da maneira correta"

  echo ""

  echo "Outras"
  echo "----------------------------------------"
  echo "exit - Fechar Programa"

  menu
}


function upg() {
  echo "Atualizando seu sistema (Incluindo atualizações de segurança)"
  sleep 1
  sudo apt-get update
  menu
}

function updist() {
  echo "Atualizando sua distribuição"
  sleep 1
  sudo apt-get dist-upgrade
  menu
}

function info() {
  echo "Carregando Informações ..."
  sleep 1
  uname -a
  echo ""
  echo "Arquitetura do sistema --------------"
  arch
  sleep 1
  menu
}

function configserv() {
  # Configurando Servidores ...
  echo "Configurando servidor ..."
  sleep 1

  # EM DESENVOLVIMENTO

  # Mensagem de Conclusão
  echo ""
  echo "Servidor Configurado com Sucesso!"
  echo ""
  sleep 1
  menu
}

# ----------------------------------------
# Funções Correspondentes a cada pacote
# ----------------------------------------

function installstudio() {
  # Estúdio ...
  echo "Instalando pacote Estúdio ..."
  sleep 1
  sudo apt-get update

  echo "Deseja instalar o GIMP? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- GIMP --------------"
    sudo apt-get install gimp
  fi

  echo "Deseja instalar o INKSCAPE? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- INKSCAPE --------------"
    sudo apt-get install inkscape
  fi

  echo "Deseja instalar o BLENDER? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- BLENDER --------------"
    sudo apt-get install blender
  fi

  echo "Deseja instalar o AUDACITY? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- AUDACITY --------------"
    sudo apt-get install audacity
  fi

  echo "Deseja instalar o OPENSHOT? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- OPENSHOT --------------"
    sudo apt-get install openshot
  fi

  # Mensagem de Conclusão
  echo ""
  echo "Pacote Instalado com Sucesso!"
  echo ""
  sleep 1
  menu
}

function installgame() {
  # Jogos ...
  echo "Instalando pacote Jogos ..."
  sleep 1
  sudo apt-get update

  echo " -------------- JAVA --------------"
  sudo apt-get install default-jre

  echo "Deseja instalar o STEAM? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- STEAM --------------"
    sudo apt-get install steam
  fi

  echo "Deseja instalar o WINE / PLAYONLINUX? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo -e " -------------- WINE / PLAYONLINUX --------------"
    sudo apt-get install wine
    sudo apt-get install playonlinux
  fi

  # Mensagem de Conclusão
  echo ""
  echo "Pacote Instalado com Sucesso!"
  echo ""
  sleep 1
  menu
}

function installserv() {
  # Servidores ...
  echo "Instalando pacote Servidores ..."
  sleep 1
  sudo apt-get update

  echo "Deseja instalar o APACHE? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- APACHE --------------"
    sudo apt-get install apache2
  fi

  echo "Deseja instalar o MYSQL? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- MYSQL --------------"
      sudo apt-get install mysql-server php5-mysql
      sudo mysql_install_db
      sudo mysql_secure_installation
  fi

  echo "Deseja instalar o PHP? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PHP --------------"
    sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
    sudo apt-get install php5-curl
  fi

  echo "Deseja instalar o PHPMYADMIN? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PHPMYADMIN --------------"
    sudo apt-get install phpmyadmin
  fi

  echo "Deseja instalar o GIT? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- GIT --------------"
    sudo apt-get install git
  fi

  # add: FTP

  echo "Deseja instalar o SAMBA? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SAMBA --------------"
    sudo apt-get install samba
  fi

  echo "Deseja instalar o WIRESHARK? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- WIRESHARK --------------"
    sudo apt-get install wireshark
  fi

  # Mensagem de Conclusão
  echo ""
  echo "Pacote Instalado com Sucesso!"
  echo ""
  sleep 1
  menu
}

function installdev() {
  # Desenvolvedores ...
  echo "Instalando pacote Desenvolvedores ..."
  sleep 1
  sudo apt-get update

  echo "Deseja instalar o FILEZILLA? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FILEZILLA --------------"
    sudo apt-get install filezilla
  fi

  echo "Deseja instalar o WIRESHARK? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- WIRESHARK --------------"
    sudo apt-get install wireshark
  fi

  echo "Deseja instalar o MYSQL WORKBENCH? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- MYSQL WORKBENCH --------------"
    apt-get install mysql-workbench mysql-workbench-data
  fi

  echo "Deseja instalar o VIM? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- VIM --------------"
    apt-get install vim
  fi

  # EM DESENVOLVIMENTO

  # Mensagem de Conclusão
  echo ""
  echo "Pacote Instalado com Sucesso!"
  echo ""
  sleep 1
  menu
}

function installsec() {
  # Segurança ...
  echo "Instalando pacote Segurança ..."
  sleep 1
  sudo apt-get update

  echo "Deseja instalar o WIRESHARK? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- WIRESHARK --------------"
    sudo apt-get install wireshark
  fi

  # EM DESENVOLVIMENTO

  # Mensagem de Conclusão
  echo ""
  echo "Pacote Instalado com Sucesso!"
  echo ""
  sleep 1
  menu
}

function installelet() {
  # Eletrônica e Engenharia ...
  echo "Instalando pacote Eletrônica e Engenharia ..."
  sleep 1
  sudo apt-get update

  echo "Deseja instalar o ARDUINO? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- ARDUINO --------------"
    sudo apt-get install arduino
    sudo apt-get install gcc-avr
    sudo apt-get install avr-libc
  fi

  echo "Deseja instalar o FRITZING? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FRITZING --------------"
    sudo apt-get install fritzing
  fi

  # Mensagem de Conclusão
  echo ""
  echo "Pacote Instalado com Sucesso!"
  echo ""
  sleep 1
  menu
}

function installhome() {
  # Família ...
  echo "Instalando pacote Para Casa ..."
  sleep 1
  sudo apt-get update

  echo "Deseja instalar o JAVA? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- JAVA --------------"
    sudo apt-get install default-jre
  fi

  echo "Deseja instalar o RAR? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- RAR --------------"
    sudo apt-get install rar
  fi

  echo "Deseja instalar o SKYPE? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SKYPE --------------"
    sudo apt-get install skype
  fi

  echo "Deseja instalar o LIBREOFFICE? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- LIBREOFFICE --------------"
    sudo apt-get install libreoffice
  fi

  echo "Deseja instalar o ACETONEISO? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- ACETONEISO --------------"
    sudo apt-get install AcetoneISO
  fi

  echo "Deseja instalar o WINE / PLAYONLINUX? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo -e " -------------- WINE / PLAYONLINUX --------------"
    sudo apt-get install wine
    sudo apt-get install playonlinux
  fi

  # Mensagem de Conclusão
  echo ""
  echo "Pacote Instalado com Sucesso!"
  echo ""
  sleep 1
  menu
}

# ----------------------------------------
# Outras Funções
# ----------------------------------------

function error() {
  echo ""
  echo "Ops, Comando inválido, tente novamente!"
  echo "DICA: "
  echo "- Verifique se o Caps Look está ativado"
  sleep 1
  menu
}

function out() {
  echo "Obrigado por usar o NuxStart!"
  echo "Encerrando [...]"
  sleep 1
  exit
}

# ----------------------------------------
# Menu Inicial
# ----------------------------------------

menu() {
  echo ""
  echo ""

  read -p ">" pack;

  case $pack in
    ajuda) ajuda ;;
    # Pacotes
    inst-studio) installstudio ;;
    inst-game) installgame ;;
    inst-serv) installserv ;;
    inst-dev) installdev ;;
    inst-sec) installsec ;;
    inst-elet) installelet ;;
    inst-home) installhome ;;
    # Outros
    config-serv) configserv ;;
    atual) upg ;;
    atual-dist) updist ;;
    info) info ;;
    sair) out ;;
    *) error ;;
  esac
}

# Executa o menu
menu
