#!/bin/bash

echo "Atualizando sua distribuição"
sleep 1
sudo apt-get upgrade
sudo apt-get dist-upgrade

echo ""
echo -e "$bggreen OK $fcolor"
echo ""
menu