#!/bin/bash

set +e

if [ $EUID -ne 0 ]; then
  echo "Please run as root!"
  exit
fi

xbps-install -y \
  vulkan-loader \
  mesa-vulkan-radeon \
  amdvlk \
  mesa-vaapi \
  mesa-vdpau

echo "AMD Drivers Installed!!!"
