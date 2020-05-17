#! /bin/bash

./install-packages.sh
./setup-user.sh
./setup-env.sh
./install-wm.sh

for OPTION in $@; do
	case "$OPTION" in
	"extra")
		./install-packages.sh
		;;
	"docker")
		./setup-docker.sh
		;;
	*)
		;;
	esac
done

sudo reboot
