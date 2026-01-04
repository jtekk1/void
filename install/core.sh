#!/bin/bash

set +e

if [ $EUID -ne 0 ]; then
  echo "Please run as root!"
  exit
fi

xbps-install -y \
  base-devel \
  base-system \
  brightnessctl \
  chrony \
  curl \
  git \
  github-cli \
  linux-firmware \
  linux-mainline \
  linux-mainline-headers \
  NetworkManager \
  pam_rundir \
  seatd \
  tailscale \
  tea \
  tmux \
  upower \
  xdg-user-dirs \
  xtools

echo "Core System items are now installed..."
