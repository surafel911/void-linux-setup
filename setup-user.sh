#! /bin/bash

mkdir ~/coding/ ~/downloads/
cp -r .config/ ~/
cp -r desktop/ ~/
cp .xinitrc ~/
cp .inputrc ~/
cp .bashrc ~/
cp .gitconfig ~/
sudo cp xorg.conf /etc/X11/

usermod -a -G wheel $USER
