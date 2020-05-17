#! /bin/bash

mkdir ~/coding/ ~/downloads/
cp -r .config/ ~/
cp -r desktop/ ~/
cp .xinitrc ~/
cp .inputrc ~/
cp .bashrc ~/

sudo usermod $USER -a -G wheel,audio,docker

echo "startx" >> ~/.bash_profile
