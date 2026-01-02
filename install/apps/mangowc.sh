#!/bin/bash

mkdir -p $HOME/XBPS/
curl -OJ https://git.jtekk.dev/api/packages/TekkOS/generic/mangowc-xbps/0.10.9/mangowc-0.10.9_1.x86_64.xbps $HOME/XBPS/
xbps-rindex -a -f $HOME/XBPS/*.xbps
xbps-install -R ./ -SAyu $HOME/XBPS/mangowc
