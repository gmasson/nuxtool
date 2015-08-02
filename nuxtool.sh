#!/bin/bash
# NuxTool 1.0
# https://github.com/gmasson/nuxstart

# CORES

verm="\033[1;31m"
verd="\033[1;32m"
azul="\033[1;34m"

bgverm="\033[41;1;37m"
bgverd="\033[42;1;37m"
bgazul="\033[44;1;37m"

fimcor="\033[0m"


# SOFTWARE

sudo apt-get check
clear

echo "----------------------------------------"
echo -e "$azul Bem Vindo ao NuxTool 1.0 $fimcor"
echo "----------------------------------------"

# ----------------------------------------
# Ajuda
# ----------------------------------------

function ajuda() {
  echo ""
  echo "----------------------------------------"
  echo -e "$azul Como usar o NuxTool 1.0 $fimcor"
  echo "----------------------------------------"
  echo ""

  echo -e "$bgazul Pacotes de Programas para instalação $fimcor"
  echo "----------------------------------------"
  echo "inst-studio - Estúdio"
  echo "inst-game - Jogos"
  echo "inst-serv - Servidores Web"
  echo "inst-dev - Desenvolvedores"
  echo "inst-elet - Eletrônica e Engenharia"
  echo "inst-home - Para Casa"

  echo ""

  echo -e "$bgazul Ferramentas $fimcor"
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

  echo -e "$bgazul Outras $fimcor"
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
  echo -e "$azul Deseja visualizar a lista de pastas do HD? (s/n)$fimcor"
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
  echo -e "$azul Deseja copiar um único arquivo? (s/n)$fimcor"
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
  echo -e "$azul Deseja instalar o GIMP? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- GIMP --------------"
    sudo apt-get install gimp
  fi

  echo ""
  echo -e "$azul Deseja instalar o INKSCAPE? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- INKSCAPE --------------"
    sudo apt-get install inkscape
  fi

  echo ""
  echo -e "$azul Deseja instalar o BLENDER? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- BLENDER --------------"
    sudo apt-get install blender
  fi

  echo ""
  echo -e "$azul Deseja instalar o AUDACITY? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- AUDACITY --------------"
    sudo apt-get install audacity
  fi

  echo ""
  echo -e "$azul Deseja instalar o OPENSHOT? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- OPENSHOT --------------"
    sudo apt-get install openshot
  fi

  echo ""
  echo -e "$azul Deseja instalar o PIVITI? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PIVITI --------------"
    sudo apt-get install pitivi
  fi

  echo ""
  echo -e "$azul Deseja instalar o AUDACIOUS? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- AUDACIOUS --------------"
    sudo apt-get install audacious
  fi

  echo ""
  echo -e "$azul Deseja instalar o VLC PLAYER? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- VLC PLAYER --------------"
    sudo apt-get install vlc
  fi

  echo ""
  echo -e "$azul Deseja instalar o K3B? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- K3B --------------"
    sudo apt-get install k3b
  fi

  echo ""
  echo -e "$azul Deseja instalar o AVIDEMUX? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- AVIDEMUX --------------"
    sudo apt-get install avidemux
  fi

  echo ""
  echo -e "$azul Deseja instalar o SCRIBUS? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SCRIBUS --------------"
    sudo apt-get install scribus
  fi

  echo ""
  echo -e "$azul Deseja instalar o CHEESE? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- CHEESE --------------"
    sudo apt-get install cheese
  fi

  # Mensagem de Conclusão
  echo ""
  echo -e "$bgverd Concluido! $fimcor"
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
  echo -e "$azul Deseja instalar o STEAM? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- STEAM --------------"
    sudo apt-get install steam
  fi

  echo ""
  echo -e "$azul Deseja instalar o WINE / PLAYONLINUX? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo -e " -------------- WINE / PLAYONLINUX --------------"
    sudo apt-get install wine
    sudo apt-get install playonlinux
  fi

  echo ""
  echo -e "$azul Deseja instalar o SUPER TUX KART? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SUPER TUX KART --------------"
    sudo apt-get install supertuxkart
  fi

  echo ""
  echo -e "$azul Deseja instalar o DREAM CHESS? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- DREAM CHESS --------------"
    sudo apt-get install dreamchess
  fi

  echo ""
  echo -e "$azul Deseja instalar o KCHECKERS? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- KCHECKERS --------------"
    sudo apt-get install kcheckers
  fi

  echo ""
  echo -e "$azul Deseja instalar o FLIGHT GEAR? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FLIGHT GEAR --------------"
    sudo apt-get install flightgear
  fi

  echo ""
  echo -e "$azul Deseja instalar o ZSNES - Emulador Super Nintendo? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- ZSNES - Emulador Super Nintendo --------------"
    sudo apt-get install zsnes
  fi

  echo ""
  echo -e "$azul Deseja instalar o STELA - Emulador Atari? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- STELA - Emulador Atari --------------"
    sudo apt-get install stella
  fi

  echo ""
  echo -e "$azul Deseja instalar o PCSXR - Emulador PS1? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PCSXR - Emulador PS1 --------------"
    sudo apt-get install pcsxr
  fi

  echo ""
  echo -e "$azul Deseja instalar o KDE GAMES? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- KDE GAMES --------------"
    sudo apt-get install kdegames
  fi

  # Mensagem de Conclusão
  echo ""
  echo -e "$bgverd Concluido! $fimcor"
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
  echo -e "$azul Deseja instalar o APACHE? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- APACHE --------------"
    sudo apt-get install apache2
  fi
  
  echo ""
  echo -e "$azul Deseja instalar o NGINX? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- NGINX --------------"
    sudo apt-get install nginx
  fi

  echo ""
  echo -e "$azul Deseja instalar o MYSQL? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- MYSQL --------------"
    sudo apt-get install mysql-server php5-mysql
    sudo mysql_install_db
    sudo mysql_secure_installation
  fi

  echo ""
  echo -e "$azul Deseja instalar o PHP? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PHP --------------"
    sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
    sudo apt-get install php5-curl
  fi
  
  echo ""
  echo -e "$azul Deseja instalar o NODEJS? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- NODEJS --------------"
    sudo apt-get install nodejs
  fi
  
  echo ""
  echo -e "$azul Deseja instalar o NPM? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- NPM --------------"
    sudo apt-get install npm
  fi

  echo ""
  echo -e "$azul Deseja instalar o NANO? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- NANO --------------"
    sudo apt-get install nano
  fi

  echo ""
  echo -e "$azul Deseja instalar o GIT? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- GIT --------------"
    sudo apt-get install git
  fi

  echo ""
  echo -e "$azul Deseja instalar o FTP? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FTP --------------"
    sudo apt-get install proftpd 
  fi

  echo ""
  echo -e "$azul Deseja instalar o PHPMYADMIN? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PHPMYADMIN --------------"
    sudo apt-get install phpmyadmin
  fi

  echo ""
  echo -e "$azul Deseja instalar o SAMBA? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SAMBA --------------"
    sudo apt-get install samba
  fi

  # Mensagem de Conclusão
  echo ""
  echo -e "$bgverd Concluido! $fimcor"
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
  echo -e "$azul Deseja instalar o FILEZILLA? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FILEZILLA --------------"
    sudo apt-get install filezilla
  fi

  echo ""
  echo -e "$azul Deseja instalar o WIRESHARK? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- WIRESHARK --------------"
    sudo apt-get install wireshark
  fi

  echo ""
  echo -e "$azul Deseja instalar o MYSQL WORKBENCH? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- MYSQL WORKBENCH --------------"
    sudo apt-get install mysql-workbench mysql-workbench-data
  fi

  echo ""
  echo -e "$azul Deseja instalar o VIM? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- VIM --------------"
    sudo apt-get install vim
  fi

  echo ""
  echo -e "$azul Deseja instalar o NANO? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- NANO --------------"
    sudo apt-get install nano
  fi

  echo ""
  echo -e "$azul Deseja instalar o ATOM? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- ATOM --------------"
    sudo apt-get install atom
  fi

  echo ""
  echo -e "$azul Deseja instalar o SUBLIME TEXT? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SUBLIME TEXT --------------"
    sudo apt-get install sublime-text
  fi

  echo ""
  echo -e "$azul Deseja instalar o PUTTY? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PUTTY --------------"
    sudo apt-get install putty
  fi

  echo ""
  echo -e "$azul Deseja instalar o UMBRELLO? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- UMBRELLO --------------"
    sudo apt-get install umbrello
  fi

  echo ""
  echo -e "$azul Deseja instalar o FIREFOX? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FIREFOX --------------"
    sudo apt-get install firefox
  fi

  echo ""
  echo -e "$azul Deseja instalar o OPERA? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- OPERA --------------"
    sudo apt-get install opera
  fi

  echo ""
  echo -e "$azul Deseja instalar o CHROMIUM? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- CHROMIUM --------------"
    sudo apt-get install chromium
  fi

  # Mensagem de Conclusão
  echo ""
  echo -e "$bgverd Concluido! $fimcor"
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
  echo -e "$azul Deseja instalar o ARDUINO? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- ARDUINO --------------"
    sudo apt-get install arduino
    sudo apt-get install gcc-avr
    sudo apt-get install avr-libc
  fi

  echo ""
  echo -e "$azul Deseja instalar o FRITZING? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FRITZING --------------"
    sudo apt-get install fritzing
  fi

  echo ""
  echo -e "$azul Deseja instalar o PCB? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PCB --------------"
    sudo apt-get install pcb
  fi

  echo ""
  echo -e "$azul Deseja instalar o GRESISTOR? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- GRESISTOR --------------"
    sudo apt-get install gResistor
  fi

  # Mensagem de Conclusão
  echo ""
  echo -e "$bgverd Concluido! $fimcor"
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
  echo -e "$azul Deseja instalar o JAVA? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- JAVA --------------"
    sudo apt-get install default-jre
  fi

  echo ""
  echo -e "$azul Deseja instalar o RAR? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- RAR --------------"
    sudo apt-get install rar
  fi

  echo ""
  echo -e "$azul Deseja instalar o FIREFOX? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FIREFOX --------------"
    sudo apt-get install firefox
  fi

  echo ""
  echo -e "$azul Deseja instalar o OPERA? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- OPERA --------------"
    sudo apt-get install opera
  fi

  echo ""
  echo -e "$azul Deseja instalar o CHROMIUM? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- CHROMIUM --------------"
    sudo apt-get install chromium
  fi

  echo ""
  echo -e "$azul Deseja instalar o SKYPE? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SKYPE --------------"
    sudo apt-get install skype
  fi

  echo ""
  echo -e "$azul Deseja instalar o TUXPAINT? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- TUXPAINT --------------"
    sudo apt-get install tuxpaint
  fi

  echo ""
  echo -e "$azul Deseja instalar o LIBREOFFICE? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- LIBREOFFICE --------------"
    sudo apt-get install libreoffice
  fi

  echo ""
  echo -e "$azul Deseja instalar o ACETONEISO? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- ACETONEISO --------------"
    sudo apt-get install AcetoneISO
  fi

  echo ""
  echo -e "$azul Deseja instalar o UGET? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- UGET --------------"
    sudo apt-get install uget
  fi

  echo ""
  echo -e "$azul Deseja instalar o ALARM CLOCK? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- ALARM CLOCK --------------"
    sudo apt-get install alarm-clock
  fi

  echo ""
  echo -e "$azul Deseja instalar o SYSINFO? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SYSINFO --------------"
    sudo apt-get install sysinfo
  fi

  echo ""
  echo -e "$azul Deseja instalar o CALIBRE? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- CALIBRE --------------"
    sudo apt-get install calibre
  fi

  echo ""
  echo -e "$azul Deseja instalar o OPENSHOT? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- OPENSHOT --------------"
    sudo apt-get install openshot
  fi

  echo ""
  echo -e "$azul Deseja instalar o VLC PLAYER? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- VLC PLAYER --------------"
    sudo apt-get install vlc
  fi

  echo ""
  echo -e "$azul Deseja instalar o SMPLAYER? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SMPLAYER --------------"
    sudo apt-get install smplayer
  fi

  echo ""
  echo -e "$azul Deseja instalar o K3B? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- K3B --------------"
    sudo apt-get install k3b
  fi

  echo ""
  echo -e "$azul Deseja instalar o AVIDEMUX? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- AVIDEMUX --------------"
    sudo apt-get install avidemux
  fi

  echo ""
  echo -e "$azul Deseja instalar o TRANSMISSION? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- TRANSMISSION --------------"
    sudo apt-get install transmission
  fi

  echo ""
  echo -e "$azul Deseja instalar o THUNDERBIRD? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- THUNDERBIRD --------------"
    sudo apt-get install thunderbird
  fi

  echo ""
  echo -e "$azul Deseja instalar o WINE / PLAYONLINUX? (s/n)$fimcor"
  read confim;
  if [[ $confim == "s" ]]; then
    echo -e " -------------- WINE / PLAYONLINUX --------------"
    sudo apt-get install wine
    sudo apt-get install playonlinux
  fi

  # Mensagem de Conclusão
  echo ""
  echo -e "$bgverd Concluido! $fimcor"
  echo ""
  sleep 1
  menu
}

# ----------------------------------------
# Outras Funções
# ----------------------------------------

function error() {
  echo ""
  echo "$verm Ops, Comando inválido, tente novamente! $fimcor"
  echo "DICA:"
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
