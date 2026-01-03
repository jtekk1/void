#!/bin/bash

xbps-install -Ayu \
  tp_smapi-dkms \
  tpacpi-bat \
  zcfan

xbps-pkgdb -m manual \
  tp_smapi-dkms \
  tpacpi-bat \
  zcfan

echo "Thinkpad items are now installed..."
