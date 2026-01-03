#!/bin/bash

xbps-install -Ayu \
  intel-video-accel \
  mesa-dri \
  mesa-vaapi \
  mesa-vdpau \
  mesa-vulkan-intel \
  tp_smapi_dkms \
  tpacpi-bat \
  zcfan

xbps-pkgdb -m manual \
  intel-video-accel \
  mesa-dri \
  mesa-vaapi \
  mesa-vdpau \
  mesa-vulkan-intel \
  tp_smapi_dkms \
  tpacpi-bat \
  zcfan

echo "Thinkpad items are now installed..."
