#!/bin/bash

xbps-install -Ayu \
  intel-video-accel \
  mesa-dri \
  mesa-vaapi \
  mesa-vdpau \
  mesa-vulkan-intel

xbps-pkgdb -m manual \
  intel-video-accel \
  mesa-dri \
  mesa-vaapi \
  mesa-vdpau \
  mesa-vulkan-intel

echo "Thinkpad items are now installed..."
