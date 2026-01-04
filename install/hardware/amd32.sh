#!/bin/bash

set +e

if [ $EUID -ne 0 ]; then
  echo "Please run as root!"
  exit
fi

xbps-install -y \
  amdvlk-32bit \
  mesa-vulkan-radeon-32bit \
  vulkan-loader-32bit \
  mesa-vaapi-32bit \
  mesa-vdpau-32bit \
  ROCm-SMI-32bit
