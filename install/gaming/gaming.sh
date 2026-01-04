#!/bin/bash

xbps-install -y \
  steam \
  gamescope \
  steam-udev-rules \
  MangoHud \
  lutris \
  protontricks \
  xpadneo

# 32 bit items:
xbps-install -y \
  libgcc-32bit \
  libstdc++-32bit \
  libdrm-32bit \
  libglvnd-32bit \
  libva-32bit \
  mesa-dri-32bit
