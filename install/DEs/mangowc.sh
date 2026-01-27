#!/bin/bash

set +e

if [ $EUID -ne 0 ]; then
  echo "Please run as root!"
  exit
fi

XBPS_DIR = "${HOME}/void/XBPS"
echo "Using $XBPS to install"

mkdir -p $XBPS_DIR
curl -OJ https://git.jtekk.dev/api/packages/TekkOS/generic/mangowc-xbps/0.10.9/mangowc-0.10.9_1.x86_64.xbps
mv mangowc* $XBPS_DIR
xbps-rindex -a -f $XBPS_DIR/*.xbps
xbps-install -R $XBPS_DIR -y mangowc
echo "DONE"
