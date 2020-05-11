#! /bin/bash

if [ -z "$1" ]; then
	./install-packages.sh 0
else
	./install-packages.sh 1
fi

./setup-user.sh
./setup-env.sh
./install-wm.sh

reboot
