#!/bin/bash

set +e

if [ ! $EUID -ne 0 ]; then
  echo "Please DO NOT run as root!"
  exit
fi

echo "Setting up Void Repos!"
sleep 5
sudo ./install/repos.sh

echo "Setting up Core items!"
sleep 5
sudo ./install/core.sh

echo "Setting up system"
sleep 5
sudo ./install/cli.sh
sudo ./install/tuis.sh
sudo ./install/tools.sh
sudo ./install/fonts.sh
sudo ./install/guis.sh
sudo ./install/extras.sh

echo "Setting up seatd and dbus!"
sleep 5
sudo ./install/services.sh

echo "Setting up Thinkpad ..."
sleep 5
sudo ./install/hardware/thinkpad.sh
sudo ./install/hardware/intel.sh
sudo ./install/dev-tools.sh
sudo ./install/desktop-env.sh
sudo ./install/DEs/mangowc.sh
sudo xbps-reconfigure -fa

echo "Setting up Apps..."
sleep 5
./install/apps/ble.sh
./install/apps/superfile.sh
./install/apps/brew.sh
./install/apps/claude-code.sh
./install/apps/helium.sh
./install/apps/flatpak-lite.sh
ln -s ~/mangowc-config ~/.config/mango


echo "DONE!!!"
echo "***** Welcome to the VOID! *****"
sleep 5
