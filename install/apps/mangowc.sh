#!/bin/bash

mkdir -p ./XBPS/
curl -OJ https://git.jtekk.dev/api/packages/TekkOS/generic/mangowc-xbps/0.10.9/mangowc-0.10.9_1.x86_64.xbps
mv mangowc* ./XBPS/
xbps-rindex -a -f ./XBPS/*.xbps
xbps-install -R ./XBPS -Ayu mangowc
xbps-pkgdb -m manual mangowc
echo "DONE"
