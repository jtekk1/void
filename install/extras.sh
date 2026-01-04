#!/bin/bash

set +e

if [ $EUID -ne 0 ]; then
  echo "Please run as root!"
  exit
fi

xbps-install -y \
  asciiquarium \
  asciiquarium \
  cmatrix \
  pipes.c

echo "Extras are now installed..."
