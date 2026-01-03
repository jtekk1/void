#!/bin/bash

set +e

xbps-install -Ayu \
  blueman \
  cliphist \
  dumb_runtime_dir \
  flatpak \
  foot \
  gnome-keyring \
  grim \
  imv \
  kanshi \
  libnotify \
  libspa-bluetooth \
  mako \
  mpv \
  nautilus \
  pipewire \
  polkit-gnome \
  shotman \
  slurp \
  starship \
  stow \
  swaybg \
  swayidle \
  swaylock \
  SwayOSD \
  wayland-utils \
  wl-clip-persist \
  wl-clipboard \
  wlogout \
  wlopm \
  wlr-randr \
  wlsunset \
  Waybar \
  wofi \
  xdg-desktop-portal-gtk \
  xdg-desktop-portal-wlr \
  xdg-desktop-portal \
  xf86-video-intel \
  xinput \
  xorg-server-xwayland \
  xrdb

source ./install/apps/mangowc.sh

xbps-pkgdb -m manual \
  blueman \
  cliphist \
  dumb_runtime_dir \
  flatpak \
  foot \
  gnome-keyring \
  grim \
  imv \
  kanshi \
  libnotify \
  libspa-bluetooth \
  mako \
  mpv \
  nautilus \
  pipewire \
  polkit-gnome \
  shotman \
  slurp \
  starship \
  stow \
  swaybg \
  swayidle \
  swaylock \
  SwayOSD \
  wayland-utils \
  wl-clip-persist \
  wl-clipboard \
  wlogout \
  wlopm \
  wlr-randr \
  wlsunset \
  Waybar \
  wofi \
  xdg-desktop-portal-gtk \
  xdg-desktop-portal-wlr \
  xdg-desktop-portal \
  xf86-video-intel \
  xinput \
  xorg-server-xwayland \
  xrdb

echo "Window Manager and Desktop Environment is now set"
