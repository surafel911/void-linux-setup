#! /bin/bash

FILE='void-packages.txt'
EXTRASFILE='void-packages-extra.txt'
PACKAGES=""
OPTPACKAGES=$1

function install {
	while IFS= read -r LINE; do
	    PACKAGES+="$LINE "
	done < $1

	sudo xbps-install -y $PACKAGES
}

sudo xbps-install -Suy void-repo-nonfree

install $FILE

if [ $OPTPACKAGES -eq 0 ]; then
	echo "Optional packages not installed."
elif [ $OPTPACKAGES -eq 1 ]; then
	install $EXTRASFILE
fi
