#!/bin/bash

set +e

if [ $EUID -ne 0 ]; then
  echo "Please run as root!"
  exit
fi

REAL_USER=${SUDO_USER:-$(whoami)}

echo "Setting up Repos!"
sleep 2
source ./install/repos.sh

echo "Setting up Core items!"
sleep 2
source ./install/core.sh

echo "Setting up system"
sleep 2
source ./install/cli.sh
source ./install/tuis.sh
source ./install/tools.sh
source ./install/fonts.sh
source ./install/mango-wm.sh
source ./install/apps/mangowc.sh
source ./install/guis.sh
source ./install/apps.sh
source ./install/extras.sh

echo "Setting up Thinkpad"
source ./install/thinkpad.sh

echo "Setting up seatd and dbus!"
sleep 2
usermod -aG _seatd $REAL_USER
ln -s /etc/sv/seatd /var/service/
ln -s /etc/sv/dbus /var/service/

sudo -u "$REAL_USER" ./install/apps/ble.sh
sudo -u "$REAL_USER" ./install/flatpaks.sh
sudo -u "$REAL_USER" ./install/apps/brew.sh
sudo -u "$REAL_USER" ./install/apps/helium.sh

echo "DONE!!!"
echo "Welcome to the VOID!"
sleep 2
reboot
