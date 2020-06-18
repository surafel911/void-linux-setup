#! /bin/bash

if [ ! -z "$1" ] && [ "$1" = "--help" ]; then
	echo "OPTIONS:"
	echo "extra - Install extra packages in the extra packages list"
	echo "docker - Automatically pull prefered docker images"
	echo "dotnet - Automatically install .NET Core 3.1 into your home drive"

	exit 0
fi

sudo cp *.conf /etc/xbps.d/

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
	"dotnet")
		./install-dotnet.sh
		;;
	*)
		;;
	esac
done

sudo reboot
