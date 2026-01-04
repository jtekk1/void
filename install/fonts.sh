#!/bin/bash

set +e

if [ $EUID -ne 0 ]; then
  echo "Please run as root!"
  exit
fi

xbps-install -y \
  font-awesome \
  font-awesome5 \
  font-awesome6 \
  font-material-design-icons-ttf \
  font-weather-icons \
  nerd-fonts \
  nerd-fonts-otf \
  nerd-fonts-symbols-ttf \
  nerd-fonts-ttf \
  terminus-font

echo "Fonts installed ... "
