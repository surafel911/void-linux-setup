#! /bin/bash

FILE='void-packages.txt'
PACKAGES=""

sudo xbps-install void-repo-nonfree

while IFS= read -r LINE; do
    PACKAGES+="$LINE "
done < $FILE

sudo xbps-install -Su $PACKAGES
