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
  echo "inst-edu - Educacional"
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

# ----------------------------------------
# Funções Correspondentes a cada pacote
# ----------------------------------------

function installstudio() {
  # Estúdio ...
  echo "Instalando pacote Estúdio ..."
  sleep 2
  sudo apt-get update

  echo " -------------- GIMP --------------"
  sudo apt-get install gimp

  echo " -------------- INKSCAPE --------------"
  sudo apt-get install inkscape

  echo " -------------- BLENDER --------------"
  sudo apt-get install blender

  echo " -------------- AUDACITY --------------"
  sudo apt-get install audacity

  echo " -------------- OPENSHOT --------------"
  sudo apt-get install openshot

  # EM DESENVOLVIMENTO

  # Mensagem de Conclusão
  echo ""
  echo "Pacote Instalado com Sucesso!"
  echo ""
  sleep 2
  menu
}

function installgame() {
  # Jogos ...
  echo "Instalando pacote Jogos ..."
  sleep 2
  sudo apt-get update

  echo " -------------- JAVA --------------"
  sudo apt-get install default-jre

  echo " -------------- STEAM --------------"
  sudo apt-get install steam

  echo -e " -------------- WINE / PLAYONLINUX --------------"
  sudo apt-get install wine
  sudo apt-get install playonlinux

  # EM DESENVOLVIMENTO

  # Mensagem de Conclusão
  echo ""
  echo "Pacote Instalado com Sucesso!"
  echo ""
  sleep 2
  menu
}

function installserv() {
  # Servidores WEB ...
  echo "Instalando pacote Servidores ..."
  sleep 2
  sudo apt-get update

  echo " -------------- APACHE --------------"
  sudo apt-get install apache2

  echo " -------------- MYSQL --------------"
  sudo apt-get install mysql-server php5-mysql
  sudo mysql_install_db
  sudo mysql_secure_installation

  echo " -------------- PHP --------------"
  sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
  sudo apt-get install php5-curl

  echo " -------------- PHPMYADMIN --------------"
  sudo apt-get install phpmyadmin

  echo " -------------- GIT --------------"
  sudo apt-get install git

  echo " -------------- SAMBA --------------"
  sudo apt-get install samba

  # Mensagem de Conclusão
  echo ""
  echo "Pacote Instalado com Sucesso!"
  echo ""
  sleep 2
  menu
}

function configserv() {
  # Configurando Servidores ...
  echo "Configurando servidor ..."
  sleep 2

  # Mensagem de Conclusão
  echo ""
  echo "Servidor Configurado com Sucesso!"
  echo ""
  sleep 2
  menu
}

function installdev() {
  # Desenvolvedores ...
  echo "Instalando pacote Desenvolvedores ..."
  sleep 2
  sudo apt-get update

  echo " -------------- JAVA --------------"
  sudo apt-get install default-jre

  echo " -------------- FILEZILLA --------------"
  sudo apt-get install filezilla

  # EM DESENVOLVIMENTO

  # Mensagem de Conclusão
  echo ""
  echo "Pacote Instalado com Sucesso!"
  echo ""
  sleep 2
  menu
}

function installsec() {
  # Segurança ...
  echo "Instalando pacote Segurança ..."
  sleep 2
  sudo apt-get update

  echo " -------------- WIRESHARK --------------"
  sudo apt-get install wireshark

  # EM DESENVOLVIMENTO

  # Mensagem de Conclusão
  echo ""
  echo "Pacote Instalado com Sucesso!"
  echo ""
  sleep 2
  menu
}

function installelet() {
  # Eletrônica e Engenharia ...
  echo "Instalando pacote Eletrônica e Engenharia ..."
  sleep 2
  sudo apt-get update

  echo " -------------- JAVA --------------"
  sudo apt-get install default-jre

  echo " -------------- ARDUINO --------------"
  sudo apt-get install arduino
  sudo apt-get install gcc-avr
  sudo apt-get install avr-libc

  echo " -------------- FRITZING --------------"
  sudo apt-get install fritzing

  # Mensagem de Conclusão
  echo ""
  echo "Pacote Instalado com Sucesso!"
  echo ""
  sleep 2
  menu
}

function installedu() {
  # Educacional ...
  echo "Instalando pacote Educacional ..."
  sleep 2
  sudo apt-get update

  echo " -------------- JAVA --------------"
  sudo apt-get install default-jre

  # EM DESENVOLVIMENTO

  # Mensagem de Conclusão
  echo ""
  echo "Pacote Instalado com Sucesso!"
  echo ""
  sleep 2
  menu
}

function installhome() {
  # Família ...
  echo "Instalando pacote Para Casa ..."
  sleep 2
  sudo apt-get update

  echo " -------------- JAVA --------------"
  sudo apt-get install default-jre

  echo " -------------- RAR --------------"
  sudo apt-get install rar

  echo " -------------- SKYPE --------------"
  sudo apt-get install skype

  echo " -------------- LIBREOFFICE --------------"
  sudo apt-get install libreoffice

  echo " -------------- ACETONEISO --------------"
  sudo apt-get install AcetoneISO

  echo -e " -------------- WINE / PLAYONLINUX --------------"
  sudo apt-get install wine
  sudo apt-get install playonlinux

  # Mensagem de Conclusão
  echo ""
  echo "Pacote Instalado com Sucesso!"
  echo ""
  sleep 2
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
    config-serv) configserv ;;
    inst-dev) installdev ;;
    inst-sec) installsec ;;
    inst-elet) installelet ;;
    inst-edu) installedu ;;
    inst-home) installhome ;;
    # Outros
    atual) upg ;;
    atual-dist) updist ;;
    info) info ;;
    sair) out ;;
    *) error ;;
  esac
}

# Executa o menu
menu
