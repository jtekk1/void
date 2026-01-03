#!/bin/bash

xbps-install -Ayu \
  blanket \
  gimp \
  ImageMagick \
  inkscape \
  nwg-look \
  obs \
  satty \
  swappy

xbps-pkgdb -m manual \
  blanket \
  gimp \
  ImageMagick \
  inkscape \
  nwg-look \
  obs \
  satty \
  swappy

echo "GUIs are now installed ..."
