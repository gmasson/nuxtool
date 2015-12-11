#!/bin/bash

sudo apt-get check
sudo dpkg --configure -a
sudo apt-get -f install
sudo apt-get -f remove
sudo apt-get autoremove
sudo apt-get clean

sudo apt-get install auto-apt
sudo auto-apt update-local
sudo auto-apt update
sudo auto-apt updatedb

sudo apt-get update

echo ""
echo "$bggreen OK $fcolor"
echo ""
menu