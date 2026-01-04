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
  mesa-vdpau \
  ROCm-SMI \
  LACT \
  xf86-video-amdgpu

echo "AMD Drivers Installed!!!"
