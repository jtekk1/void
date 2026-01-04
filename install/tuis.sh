#!/bin/bash

set +e

if [ $EUID -ne 0 ]; then
  echo "Please run as root!"
  exit
fi

xbps-install -y \
  bluetui \
  btop \
  dialog \
  dust \
  fastfetch \
  gdu \
  glow \
  impala \
  lazygit \
  luarocks \
  neovim \
  spotify-tui \
  tldr \
  wiremix

echo "TUIs are now installed..."
