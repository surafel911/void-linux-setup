#! /bin/bash

REPOS=('dwm' 'dmenu' 'st' 'slstatus')

cd ../coding/

for REPO in ${REPOS[@]}; do
	git clone https://github.com/surafel911/$REPO.git
	cd $REPO/

	git checkout config
	sudo make install
	make clean
	cd ../
done
