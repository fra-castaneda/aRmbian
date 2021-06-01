#!/bin/sh
echo [=== aRmbian Setup Scrpit ===]
echo
echo [== System Configuration ==]
echo
echo [= Swapfile =]
dd if=/dev/zero of=/media/swapfile bs=1M count=2024
mkswap /media/swapfile
swapon /media/swapfile
echo "/media/swapfile none swap sw 0 0 " >> /etc/fstab
echo 
echo [=== aRmbian  - Depencies ===]
echo
apt update
apt upgrade -y
apt install -y build-essential libssl-dev libgit2-dev libcurl4-openssl-dev libpoppler-cpp-dev libxml2-dev libudunits2-dev libcairo2-dev libgdal-dev texlive pandoc  r-recommended r-base-core r-base r-base-dev xorg lxde chromium-browser
sudo su - -c "R -e \"install.packages('devtools')\""
sudo su - -c "R -e \"install.packages('multcomp')\""
sudo su - -c "R -e \"install.packages('tidyverse')\""
sudo su - -c "R -e \"install.packages('GADMTools')\""
#sudo su - -c "R -e \"install.packages('scales')\""
#sudo su - -c "R -e \"install.packages('rnaturalearth')\""
#sudo su - -c "R -e \"install.packages('officer')\""
sudo su - -c "R -e \"install.packages('flextable')\""

