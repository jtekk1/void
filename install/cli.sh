#!/bin/bash

set +e

if [ $EUID -ne 0 ]; then
  echo "Please run as root!"
  exit
fi

xbps-install -y \
  atuin \
  bat \
  eza \
  fd \
  fzf \
  jq \
  lsof \
  plocate \
  ripgrep \
  rsync \
  wget \
  zip \
  zoxide

echo "Cli Tools are now installed... "
