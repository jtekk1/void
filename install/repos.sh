#!/bin/bash

set +e

if [ $EUID -ne 0 ]; then
  echo "Please run as root!"
  exit
fi

xbps-install -y \
  void-repo-multilib \
  void-repo-multilib-nonfree \
  void-repo-nonfree

xbps-install -Syu
