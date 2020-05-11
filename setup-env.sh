#! /bin/bash

sudo ln -sf /etc/sv/dbus /var/service/
sudo ln -sf /etc/sv/docker /var/service/

for ID in {3..6}; do
	sudo rm /var/service/agetty-tty$ID
done

sudo ln -sf /usr/bin/code-oss /usr/bin/vscode

sudo sv start dbus

sudo os-prober
sudo nvim /boot/grub/grub.cfg
