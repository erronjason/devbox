#!/bin/bash

apt-get update
#apt-get upgrade

# Set password for vagrant user for visual login
echo vagrant:dev | chpasswd

apt-get -y install --no-install-recommends lubuntu-desktop
