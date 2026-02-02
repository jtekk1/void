#!/bin/bash

set +e

if [ $EUID -ne 0 ]; then
	echo "Please run as root!"
	exit
fi

xbps-remove -ROOoy swaylock
xbps-rindex -a -f ./XBPS/*.xbps
xbps-install -R ./XBPS -y mangowc swaylock-effects
xbps-install -y greetd tuigreet
cp ./install/DEs/greeter-config.toml /etc/greetd/config.toml
ln -s /etc/sv/greetd /var/service/

echo "DONE"
