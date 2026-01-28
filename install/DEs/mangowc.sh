#!/bin/bash

set +e

if [ $EUID -ne 0 ]; then
	echo "Please run as root!"
	exit
fi

xbps-rindex -a -f ./XBPS/*.xbps
xbps-install -R ./XBPS -y mangowc swaylock-effects
xbps-install -y greeter tuigreet
sudo cp ./install/DE/greeter-config.toml /etc/greetd/config.toml
echo "DONE"
