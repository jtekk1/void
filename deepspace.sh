#!/bin/bash

set +e

if [ ! $EUID -ne 0 ]; then
	echo "Please DO NOT run as root!"
	exit
fi

echo "Setting up Void Repos!"
sleep 2
sudo ./install/repos.sh

echo "Setting up Core items!"
sleep 2
sudo ./install/core.sh

echo "Setting up system"
sleep 2
sudo ./install/cli.sh
sudo ./install/tuis.sh
sudo ./install/tools.sh
sudo ./install/fonts.sh
sudo ./install/guis.sh
sudo ./install/extras.sh
sudo ./install/dev-tools.sh

echo "Setting up seatd and dbus!"
sleep 2
sudo ./install/services.sh

echo "Setting up Deepspace ..."
sleep 2
sudo ./install/hardware/amd.sh
sudo ./install/hardware/amd32.sh
sudo ./install/gaming/gaming.sh
sudo ./install/desktop-env.sh
sudo ./install/gaming/flatpaks.sh
sudo ./install/DEs/mangowc.sh
sudo xbps-reconfigure -fa

echo "Setting up Apps..."
sleep 2
source ./install/apps/ble.sh
source ./install/apps/superfile.sh
source ./install/apps/brew.sh
source ./install/apps/claude-code.sh
source ./install/apps/helium.sh
source ./install/apps/flatpaks.sh

ln -s ~/mangowc-config ~/.config/mango
CURDIR=$(pwd)
cd ~/dots
source ./stow.sh
cd $CURDIR
source ./post-install/setup_home.sh

echo "DONE!!!"
echo "***** Welcome to the VOID! *****"
