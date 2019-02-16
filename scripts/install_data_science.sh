#!/bin/bash
echo "\033[1;34m"
echo "    _____                            _                       _   _                    "
echo "     /  '            _/_            | )           _/_       //  //      _/_           "
echo "  ,-/-,   __  __ _   /   __  ,  ,---|/  ____  _   /   __.  //  //  __.  /   o __ ____ "
echo " (_/     / (_(_)/_)_<__ / (_/_   \_/ \_/ / <_/_)_<__ (_/|_</_ </_ (_/|_<__ <_(_)/ / <_"
echo "                           /                                                          "
echo "                          '                                                           "
echo '\033[0m'
sleep 1

echo "Installing Python Tools"
sleep 1
echo "Installing pipenv"
packages="git python3 python3-pip virtualenv python3-dev libpq-dev"

sudo apt install $packages
sudo -H pip3 install --upgrade pip
sudo -H pip3 install pipenv

# Create Repositorios folder
mkdir ~/repositorios
cd ~/repositorios/
git clone https://github.com/diegotony/linux_utils

# Create Virtualenv Folder
mkdir ~/virtualenv
cd virtualenv

#vistualenv d_s
virtualenv .p python3 data_science
source django/bin/activate
pip install -r requirements_data_science.txt
deactivate
