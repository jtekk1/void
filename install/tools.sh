#!/bin/bash

set +e

if [ $EUID -ne 0 ]; then
  echo "Please run as root!"
  exit
fi

xbps-install -y \
  udiskie \
  watchexec \
  wev \
  xcursorgen

echo "Tools installed ..."
