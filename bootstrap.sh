#!/bin/bash

##################################
# Initial installation and upgrade
apt-get update
apt-get upgrade

# Set password for vagrant user for visual login
echo vagrant:dev | chpasswd # Initial password is after the colon
userdel ubuntu

################################
# Install your development stack
apt-get -y install python34 python-pip

pip install virtualenvwrapper

cat >> /home/vagrant/

# Install a gui. This can be replaced by whatever you prefer
apt-get -y install --no-install-recommends lubuntu-desktop
DEBIAN_FRONTEND=noninteractive DEBIAN_PRIORITY=critical apt-get -q -y -o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold" upgrade
shutdown -r now
