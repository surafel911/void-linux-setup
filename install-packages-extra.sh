#! /bin/bash

EXTRASFILE='void-packages-extra.txt'
OPTPACKAGES=''

while IFS= read -r LINE; do
    OPTPACKAGES+="$LINE "
done < $EXTRASFILE

sudo xbps-install -y $OPTPACKAGES
