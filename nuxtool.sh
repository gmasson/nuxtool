#!/bin/bash
# NuxTool 1.0
# https://github.com/gmasson/nuxstart

sudo apt-get check
clear
echo "----------------------------------------"
echo "Bem Vindo ao NuxTool 1.0"
echo "----------------------------------------"

# ----------------------------------------
# Ajuda
# ----------------------------------------

function ajuda() {
  echo "-------------------------"
  echo "Como usar o NuxTool 1.0"
  echo "-------------------------"

  echo ""

  echo "Pacotes de Programas para instalação"
  echo "----------------------------------------"
  echo "inst-studio - Estúdio"
  echo "inst-game - Jogos"
  echo "inst-serv - Servidores Web"
  echo "inst-dev - Desenvolvedores"
  echo "inst-elet - Eletrônica e Engenharia"
  echo "inst-home - Para Casa"

  echo ""

  echo "Ferramentas"
  echo "----------------------------------------"
  echo "atual - Atualiza o sistema (Incluindo atualizações de segurança)"
  echo "atual-dist - Atualiza sua distribuição para a versão mais recente"
  echo "info - Informações sobre sua máquina e o sistema operacional"
  echo "info-cpu - Informações sobre seu Processador"
  echo "info-rede - Informações sobre sua Rede"
  echo "info-memo - Informações sobre sua Memória"
  echo "info-user - Informações sobre seus Usuários Logados"
  echo "info-hd - Informações sobre seu(s) HD(s)"
  echo "info-proc - Informações sobre os Processos atuais da sua máquina"
  echo "bkp - Backup de pastas e arquivos"
  echo "corrigir - Correção completa de erros do sistema"

  echo ""

  echo "Outras"
  echo "----------------------------------------"
  echo "exit - Fechar Programa"

  menu
}

# ----------------------------------------
# Funções Correspondentes as ferramentas
# ----------------------------------------

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
  echo "Exibindo Informações gerais"
  uname -a
  sleep 1
  menu
}

function infocpu() {
  echo "Exibindo Informações do Processador"
  cat /proc/cpuinfo
  sleep 1
  menu
}

function inforede() {
  echo "Exibindo Informações de Rede"
  ifconfig
  sleep 1
  menu
}

function infomemo() {
  echo "Exibindo Informações da Memória"
  free -h
  sleep 1
  menu
}

function infohd() {
  echo "Exibindo Informações do HD"
  df
  echo ""
  echo "Deseja visualizar a lista de pastas do HD? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PASTAS --------------"
    du
  fi
  sleep 1
  menu
}

function infouser() {
  echo "Exibindo Informações de Usuários Logados"
  free -h
  sleep 1
  menu
}

function infoproc() {
  echo "Exibindo Processos atuais"
  echo ""
  echo "OBSERVAÇÃO: Após a verificação dos processos,"
  echo "aperte CTRL C para sair."
  echo ""
  echo "Iniciando..."
  sleep 3
  top
  menu
}

function bkp() {
  echo ""
  echo "Deseja copiar um único arquivo? (s/n)"
  read confim;
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
}

function corrigir() {
  # Configurando Servidores ...
  echo "Corrigindo o Sistema ..."
  sleep 1

  sudo apt-get check
  sudo dpkg --configure -a
  sudo apt-get -f install
  sudo apt-get -f remove
  sudo apt-get autoremove
  sudo apt-get clean
  sudo apt-get update

  # Mensagem de Conclusão
  echo ""
  echo "Sistema melhorado com Sucesso!"
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

  echo ""
  echo "Deseja instalar o GIMP? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- GIMP --------------"
    sudo apt-get install gimp
  fi

  echo ""
  echo "Deseja instalar o INKSCAPE? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- INKSCAPE --------------"
    sudo apt-get install inkscape
  fi

  echo ""
  echo "Deseja instalar o BLENDER? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- BLENDER --------------"
    sudo apt-get install blender
  fi

  echo ""
  echo "Deseja instalar o AUDACITY? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- AUDACITY --------------"
    sudo apt-get install audacity
  fi

  echo ""
  echo "Deseja instalar o OPENSHOT? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- OPENSHOT --------------"
    sudo apt-get install openshot
  fi

  echo ""
  echo "Deseja instalar o PIVITI? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PIVITI --------------"
    sudo apt-get install pitivi
  fi

  echo ""
  echo "Deseja instalar o AUDACIOUS? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- AUDACIOUS --------------"
    sudo apt-get install audacious
  fi

  echo ""
  echo "Deseja instalar o VLC PLAYER? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- VLC PLAYER --------------"
    sudo apt-get install vlc
  fi

  echo ""
  echo "Deseja instalar o K3B? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- K3B --------------"
    sudo apt-get install k3b
  fi

  echo ""
  echo "Deseja instalar o AVIDEMUX? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- AVIDEMUX --------------"
    sudo apt-get install avidemux
  fi

  echo ""
  echo "Deseja instalar o SCRIBUS? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SCRIBUS --------------"
    sudo apt-get install scribus
  fi

  echo ""
  echo "Deseja instalar o CHEESE? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- CHEESE --------------"
    sudo apt-get install cheese
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

  echo ""
  echo "Deseja instalar o STEAM? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- STEAM --------------"
    sudo apt-get install steam
  fi

  echo ""
  echo "Deseja instalar o WINE / PLAYONLINUX? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo -e " -------------- WINE / PLAYONLINUX --------------"
    sudo apt-get install wine
    sudo apt-get install playonlinux
  fi

  echo ""
  echo "Deseja instalar o SUPER TUX KART? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SUPER TUX KART --------------"
    sudo apt-get install supertuxkart
  fi

  echo ""
  echo "Deseja instalar o DREAM CHESS? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- DREAM CHESS --------------"
    sudo apt-get install dreamchess
  fi

  echo ""
  echo "Deseja instalar o KCHECKERS? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- KCHECKERS --------------"
    sudo apt-get install kcheckers
  fi

  echo ""
  echo "Deseja instalar o FLIGHT GEAR? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FLIGHT GEAR --------------"
    sudo apt-get install flightgear
  fi

  echo ""
  echo "Deseja instalar o ZSNES - Emulador Super Nintendo? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- ZSNES - Emulador Super Nintendo --------------"
    sudo apt-get install zsnes
  fi

  echo ""
  echo "Deseja instalar o STELA - Emulador Atari? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- STELA - Emulador Atari --------------"
    sudo apt-get install stella
  fi

  echo ""
  echo "Deseja instalar o PCSXR - Emulador PS1? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PCSXR - Emulador PS1 --------------"
    sudo apt-get install pcsxr
  fi

  echo ""
  echo "Deseja instalar o KDE GAMES? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- KDE GAMES --------------"
    sudo apt-get install kdegames
  fi

  # Mensagem de Conclusão
  echo ""
  echo "Pacote Instalado com Sucesso!"
  echo ""
  echo "OBSERVAÇÃO:"
  echo "- Agora você pode executar grande parte dos jogos do Windows no Linux usando o WINE"
  echo ""
  sleep 1
  menu
}

function installserv() {
  # Servidores ...
  echo "Instalando pacote Servidores ..."
  sleep 1
  sudo apt-get update

  echo ""
  echo "Deseja instalar o APACHE? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- APACHE --------------"
    sudo apt-get install apache2
  fi

  echo ""
  echo "Deseja instalar o MYSQL? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- MYSQL --------------"
    sudo apt-get install mysql-server php5-mysql
    sudo mysql_install_db
    sudo mysql_secure_installation
  fi

  echo ""
  echo "Deseja instalar o PHP? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PHP --------------"
    sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
    sudo apt-get install php5-curl
  fi

  echo ""
  echo "Deseja instalar o NANO? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- NANO --------------"
    sudo apt-get install nano
  fi

  echo ""
  echo "Deseja instalar o GIT? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- GIT --------------"
    sudo apt-get install git
  fi

  echo ""
  echo "Deseja instalar o FTP? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FTP --------------"
    sudo apt-get install proftpd 
  fi

  echo ""
  echo "Deseja instalar o PHPMYADMIN? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PHPMYADMIN --------------"
    sudo apt-get install phpmyadmin
  fi

  echo ""
  echo "Deseja instalar o SAMBA? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SAMBA --------------"
    sudo apt-get install samba
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

  echo ""
  echo "Deseja instalar o FILEZILLA? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FILEZILLA --------------"
    sudo apt-get install filezilla
  fi

  echo ""
  echo "Deseja instalar o WIRESHARK? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- WIRESHARK --------------"
    sudo apt-get install wireshark
  fi

  echo ""
  echo "Deseja instalar o MYSQL WORKBENCH? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- MYSQL WORKBENCH --------------"
    sudo apt-get install mysql-workbench mysql-workbench-data
  fi

  echo ""
  echo "Deseja instalar o VIM? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- VIM --------------"
    sudo apt-get install vim
  fi

  echo ""
  echo "Deseja instalar o NANO? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- NANO --------------"
    sudo apt-get install nano
  fi

  echo ""
  echo "Deseja instalar o ATOM? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- ATOM --------------"
    sudo apt-get install atom
  fi

  echo ""
  echo "Deseja instalar o SUBLIME TEXT? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SUBLIME TEXT --------------"
    sudo apt-get install sublime-text
  fi

  echo ""
  echo "Deseja instalar o PUTTY? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PUTTY --------------"
    sudo apt-get install putty
  fi

  echo ""
  echo "Deseja instalar o UMBRELLO? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- UMBRELLO --------------"
    sudo apt-get install umbrello
  fi

  echo ""
  echo "Deseja instalar o FIREFOX? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FIREFOX --------------"
    sudo apt-get install firefox
  fi

  echo ""
  echo "Deseja instalar o OPERA? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- OPERA --------------"
    sudo apt-get install opera
  fi

  echo ""
  echo "Deseja instalar o CHROMIUM? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- CHROMIUM --------------"
    sudo apt-get install chromium
  fi

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

  echo ""
  echo "Deseja instalar o ARDUINO? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- ARDUINO --------------"
    sudo apt-get install arduino
    sudo apt-get install gcc-avr
    sudo apt-get install avr-libc
  fi

  echo ""
  echo "Deseja instalar o FRITZING? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FRITZING --------------"
    sudo apt-get install fritzing
  fi

  echo ""
  echo "Deseja instalar o PCB? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PCB --------------"
    sudo apt-get install pcb
  fi

  echo ""
  echo "Deseja instalar o GRESISTOR? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- GRESISTOR --------------"
    sudo apt-get install gResistor
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

  echo ""
  echo "Deseja instalar o JAVA? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- JAVA --------------"
    sudo apt-get install default-jre
  fi

  echo ""
  echo "Deseja instalar o RAR? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- RAR --------------"
    sudo apt-get install rar
  fi

  echo ""
  echo "Deseja instalar o FIREFOX? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FIREFOX --------------"
    sudo apt-get install firefox
  fi

  echo ""
  echo "Deseja instalar o OPERA? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- OPERA --------------"
    sudo apt-get install opera
  fi

  echo ""
  echo "Deseja instalar o CHROMIUM? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- CHROMIUM --------------"
    sudo apt-get install chromium
  fi

  echo ""
  echo "Deseja instalar o SKYPE? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SKYPE --------------"
    sudo apt-get install skype
  fi

  echo ""
  echo "Deseja instalar o TUXPAINT? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- TUXPAINT --------------"
    sudo apt-get install tuxpaint
  fi

  echo ""
  echo "Deseja instalar o LIBREOFFICE? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- LIBREOFFICE --------------"
    sudo apt-get install libreoffice
  fi

  echo ""
  echo "Deseja instalar o ACETONEISO? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- ACETONEISO --------------"
    sudo apt-get install AcetoneISO
  fi

  echo ""
  echo "Deseja instalar o UGET? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- UGET --------------"
    sudo apt-get install uget
  fi

  echo ""
  echo "Deseja instalar o ALARM CLOCK? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- ALARM CLOCK --------------"
    sudo apt-get install alarm-clock
  fi

  echo ""
  echo "Deseja instalar o SYSINFO? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SYSINFO --------------"
    sudo apt-get install sysinfo
  fi

  echo ""
  echo "Deseja instalar o CALIBRE? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- CALIBRE --------------"
    sudo apt-get install calibre
  fi

  echo ""
  echo "Deseja instalar o OPENSHOT? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- OPENSHOT --------------"
    sudo apt-get install openshot
  fi

  echo ""
  echo "Deseja instalar o VLC PLAYER? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- VLC PLAYER --------------"
    sudo apt-get install vlc
  fi

  echo ""
  echo "Deseja instalar o SMPLAYER? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SMPLAYER --------------"
    sudo apt-get install smplayer
  fi

  echo ""
  echo "Deseja instalar o K3B? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- K3B --------------"
    sudo apt-get install k3b
  fi

  echo ""
  echo "Deseja instalar o AVIDEMUX? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- AVIDEMUX --------------"
    sudo apt-get install avidemux
  fi

  echo ""
  echo "Deseja instalar o TRANSMISSION? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- TRANSMISSION --------------"
    sudo apt-get install transmission
  fi

  echo ""
  echo "Deseja instalar o THUNDERBIRD? (s/n)"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- THUNDERBIRD --------------"
    sudo apt-get install thunderbird
  fi

  echo ""
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
  echo ""
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
    inst-elet) installelet ;;
    inst-home) installhome ;;
    # Outros
    atual) upg ;;
    atual-dist) updist ;;
    info) info ;;
    info-cpu) infocpu ;;
    info-rede) inforede ;;
    info-memo) infomemo ;;
    info-user) infouser ;;
    info-hd) infohd ;;
    info-proc) infoproc ;;
    bkp) bkp ;;
    corrigir) corrigir ;;
    sair) out ;;
    *) error ;;
  esac
}

# Executa o menu
menu
