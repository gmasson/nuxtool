
function gimp() {
  echo ""
  echo "Deseja instalar o GIMP? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- GIMP --------------"
    sudo apt-get install gimp
  fi
}

function inkscape() {
  echo ""
  echo "Deseja instalar o INKSCAPE? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- INKSCAPE --------------"
    sudo apt-get install inkscape
  fi
}

function blender() {
  echo ""
  echo "Deseja instalar o BLENDER? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- BLENDER --------------"
    sudo apt-get install blender
  fi
}

function audacity() {
  echo ""
  echo "Deseja instalar o AUDACITY? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- AUDACITY --------------"
    sudo apt-get install audacity
  fi
}

function openshot() {
  echo ""
  echo "Deseja instalar o OPENSHOT? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- OPENSHOT --------------"
    sudo apt-get install openshot
  fi
}

function pitivi() {
  echo ""
  echo "Deseja instalar o PIVITI? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PIVITI --------------"
    sudo apt-get install pitivi
  fi
}

function audacious() {
  echo ""
  echo "Deseja instalar o AUDACIOUS? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- AUDACIOUS --------------"
    sudo apt-get install audacious
  fi
}

function vlc() {
  echo ""
  echo "Deseja instalar o VLC PLAYER? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- VLC PLAYER --------------"
    sudo apt-get install vlc
  fi
}

function k3b() {
  echo ""
  echo "Deseja instalar o K3B? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- K3B --------------"
    sudo apt-get install k3b
  fi
}

function avidemux() {
  echo ""
  echo "Deseja instalar o AVIDEMUX? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- AVIDEMUX --------------"
    sudo apt-get install avidemux
  fi
}

function scribus() {
  echo ""
  echo "Deseja instalar o SCRIBUS? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SCRIBUS --------------"
    sudo apt-get install scribus
  fi
}

function cheese() {
  echo ""
  echo "Deseja instalar o CHEESE? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- CHEESE --------------"
    sudo apt-get install cheese
  fi
}

function java() {
  echo ""
  echo "Deseja instalar o JAVA? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- JAVA --------------"
    sudo apt-get install default-jre
  fi
}

function steam() {
  echo ""
  echo "Deseja instalar o STEAM? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- STEAM --------------"
    sudo apt-get install steam
  fi
}

function wine() {
  echo ""
  echo "Deseja instalar o WINE / PLAYONLINUX? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo -e " -------------- WINE / PLAYONLINUX --------------"
    sudo apt-get install wine
    sudo apt-get install playonlinux
  fi
}

function supertuxkart() {
  echo ""
  echo "Deseja instalar o SUPER TUX KART? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SUPER TUX KART --------------"
    sudo apt-get install supertuxkart
  fi
}

function dreamchess() {
  echo ""
  echo "Deseja instalar o DREAM CHESS? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- DREAM CHESS --------------"
    sudo apt-get install dreamchess
  fi
}

function kcheckers() {
  echo ""
  echo "Deseja instalar o KCHECKERS? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- KCHECKERS --------------"
    sudo apt-get install kcheckers
  fi
}

function flightgear() {
  echo ""
  echo "Deseja instalar o FLIGHT GEAR? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FLIGHT GEAR --------------"
    sudo apt-get install flightgear
  fi
}

function zsnes() {
  echo ""
  echo "Deseja instalar o ZSNES - Emulador Super Nintendo? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- ZSNES - Emulador Super Nintendo --------------"
    sudo apt-get install zsnes
  fi
}

function stella() {
  echo ""
  echo "Deseja instalar o STELA - Emulador Atari? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- STELA - Emulador Atari --------------"
    sudo apt-get install stella
  fi
}

function pcsxr() {
  echo ""
  echo "Deseja instalar o PCSXR - Emulador PS1? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PCSXR - Emulador PS1 --------------"
    sudo apt-get install pcsxr
  fi
}

function kdegames() {
  echo ""
  echo "Deseja instalar o KDE GAMES? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- KDE GAMES --------------"
    sudo apt-get install kdegames
  fi
}

function apache2() {
  echo ""
  echo "Deseja instalar o APACHE? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- APACHE --------------"
    sudo apt-get install apache2
  fi
}
  
function nginx() {
  echo ""
  echo "Deseja instalar o NGINX? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- NGINX --------------"
    sudo apt-get install nginx
  fi
}

function mysql() {
  echo ""
  echo "Deseja instalar o MYSQL? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- MYSQL --------------"
    sudo apt-get install mysql-server php5-mysql
    sudo mysql_install_db
    sudo mysql_secure_installation
  fi
}

function php5() {
  echo ""
  echo "Deseja instalar o PHP? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PHP --------------"
    sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
    sudo apt-get install php5-curl
  fi
}
  
function nodejs() {
  echo ""
  echo "Deseja instalar o NODEJS? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- NODEJS --------------"
    sudo apt-get install nodejs
  fi
}
  
function npm() {
  echo ""
  echo "Deseja instalar o NPM? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- NPM --------------"
    sudo apt-get install npm
  fi
}

function nano() {
  echo ""
  echo "Deseja instalar o NANO? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- NANO --------------"
    sudo apt-get install nano
  fi
}

function git() {
  echo ""
  echo "Deseja instalar o GIT? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- GIT --------------"
    sudo apt-get install git
  fi
}

function proftpd() {
  echo ""
  echo "Deseja instalar o FTP? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FTP --------------"
    sudo apt-get install proftpd 
  fi
}

function phpmyadmin() {
  echo ""
  echo "Deseja instalar o PHPMYADMIN? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PHPMYADMIN --------------"
    sudo apt-get install phpmyadmin
  fi
}

function samba() {
  echo ""
  echo "Deseja instalar o SAMBA? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SAMBA --------------"
    sudo apt-get install samba
  fi
}

function filezilla() {
  echo ""
  echo "Deseja instalar o FILEZILLA? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FILEZILLA --------------"
    sudo apt-get install filezilla
  fi
}

function wireshark() {
  echo ""
  echo "Deseja instalar o WIRESHARK? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- WIRESHARK --------------"
    sudo apt-get install wireshark
  fi
}

function workbench() {
  echo ""
  echo "Deseja instalar o MYSQL WORKBENCH? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- MYSQL WORKBENCH --------------"
    sudo apt-get install mysql-workbench mysql-workbench-data
  fi
}

function vim() {
  echo ""
  echo "Deseja instalar o VIM? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- VIM --------------"
    sudo apt-get install vim
  fi
}

function atom() {
  echo ""
  echo "Deseja instalar o ATOM? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- ATOM --------------"
    sudo apt-get install atom
  fi
}

function sublime() {
  echo ""
  echo "Deseja instalar o SUBLIME TEXT? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SUBLIME TEXT --------------"
    sudo apt-get install sublime-text
  fi
}

function putty() {
  echo ""
  echo "Deseja instalar o PUTTY? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PUTTY --------------"
    sudo apt-get install putty
  fi
}

function umbrello() {
  echo ""
  echo "Deseja instalar o UMBRELLO? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- UMBRELLO --------------"
    sudo apt-get install umbrello
  fi
}

function arduino() {
  echo ""
  echo "Deseja instalar o ARDUINO? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- ARDUINO --------------"
    sudo apt-get install arduino
    sudo apt-get install gcc-avr
    sudo apt-get install avr-libc
  fi
}

function fritzing() {
  echo ""
  echo "Deseja instalar o FRITZING? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FRITZING --------------"
    sudo apt-get install fritzing
  fi
}

function pcb() {
  echo ""
  echo "Deseja instalar o PCB? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- PCB --------------"
    sudo apt-get install pcb
  fi
}

function gresistor() {
  echo ""
  echo "Deseja instalar o GRESISTOR? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- GRESISTOR --------------"
    sudo apt-get install gResistor
  fi
}

function firefox() {
  echo ""
  echo "Deseja instalar o FIREFOX? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- FIREFOX --------------"
    sudo apt-get install firefox
  fi
}

function opera() {
  echo ""
  echo "Deseja instalar o OPERA? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- OPERA --------------"
    sudo apt-get install opera
  fi
}

function chromium() {
  echo ""
  echo "Deseja instalar o CHROMIUM? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- CHROMIUM --------------"
    sudo apt-get install chromium
  fi
}

function rar() {
  echo ""
  echo "Deseja instalar o RAR? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- RAR --------------"
    sudo apt-get install rar
  fi
}

function skype() {
  echo ""
  echo "Deseja instalar o SKYPE? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SKYPE --------------"
    sudo apt-get install skype
  fi
}

function tuxpaint() {
  echo ""
  echo "Deseja instalar o TUXPAINT? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- TUXPAINT --------------"
    sudo apt-get install tuxpaint
  fi
}

function libreoffice() {
  echo ""
  echo "Deseja instalar o LIBREOFFICE? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- LIBREOFFICE --------------"
    sudo apt-get install libreoffice
  fi
}

function acetoneiso() {
  echo ""
  echo "Deseja instalar o ACETONEISO? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- ACETONEISO --------------"
    sudo apt-get install AcetoneISO
  fi
}

function uget() {
  echo ""
  echo "Deseja instalar o UGET? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- UGET --------------"
    sudo apt-get install uget
  fi
}

function alarm() {
  echo ""
  echo "Deseja instalar o ALARM CLOCK? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- ALARM CLOCK --------------"
    sudo apt-get install alarm-clock
  fi
}

function sysinfo() {
  echo ""
  echo "Deseja instalar o SYSINFO? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SYSINFO --------------"
    sudo apt-get install sysinfo
  fi
}

function calibre() {
  echo ""
  echo "Deseja instalar o CALIBRE? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- CALIBRE --------------"
    sudo apt-get install calibre
  fi
}

function smplayer() {
  echo ""
  echo "Deseja instalar o SMPLAYER? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- SMPLAYER --------------"
    sudo apt-get install smplayer
  fi
}

function transmission() {
  echo ""
  echo "Deseja instalar o TRANSMISSION? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- TRANSMISSION --------------"
    sudo apt-get install transmission
  fi
}

function thunderbird() {
  echo ""
  echo "Deseja instalar o THUNDERBIRD? (s/n)"
  read -p "= " confim;
  if [[ $confim == "s" ]]; then
    echo " -------------- THUNDERBIRD --------------"
    sudo apt-get install thunderbird
  fi
}

