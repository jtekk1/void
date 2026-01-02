#!/bin/bash

xbps-install -Ayu \
  base-devel \
  base-system \
  brightnessctl \
  chrony \
  curl \
  elogind \
  ghi \
  git \
  grub-i386-efi \
  grub-x86_64-efi \
  linux \
  linux-firmware \
  linux-mainline \
  linux-mainline-headers \
  pam_rundir \
  seatd \
  tea \
  tmux \
  upower \
  xdg-user-dirs \
  xtools

echo "Core System items are now installed..."
