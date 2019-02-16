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

#Updating Packages
echo '\033[0;33mUpdating Packages '
sleep 1
apt update 
echo '\033[0m'

# Upgrade Packages
echo '\033[0;33mUpgrade Packages'
sleep 1
#apt upgrade
echo '\033[0m'


# Create Repositorios folder
mkdir ~/repositorios
cd ~/repositorios/
git clone https://github.com/diegotony/linux_utils
cd 

# Installations Packages


echo "Installing Python Tools"
sleep 1
echo "Installing pipenv"
packages="git python3 python3-pip virtualenv python3-dev libpq-dev"

sudo apt install $packages
sudo -H pip3 install --upgrade pip
sudo -H pip3 install pipenv


# virtualenv django
cd
echo "virtualenv django"
mkdir ~/virtualenv
cd virtualenv

sleep 1

virtualenv -p python3 django
sleep 1
source ~/virtualenv/django/bin/activate

sleep 1

pip install ipython django
deactivate