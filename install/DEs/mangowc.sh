#!/bin/bash

set +e

if [ $EUID -ne 0 ]; then
  echo "Please run as root!"
  exit
fi

mkdir -p ./XBPS/
curl -OJ https://git.jtekk.dev/api/packages/TekkOS/generic/mangowc-xbps/0.10.9/mangowc-0.10.9_1.x86_64.xbps
mv mangowc* ./XBPS/
xbps-rindex -a -f ./XBPS/*.xbps
xbps-install -R ./XBPS -y mangowc
echo "DONE"
