#!/bin/bash

set +e

if [ $EUID -ne 0 ]; then
  echo "Please run as root!"
  exit
fi

xbps-install -y \
  tp_smapi-dkms \
  tpacpi-bat \
  zcfan

echo "Thinkpad items are now installed..."
