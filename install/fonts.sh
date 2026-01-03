#!/usr/bin

xbps-install -Ayu \
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

xbps-pkgdb -m manual \
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
