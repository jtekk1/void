#!/usr/bin

xbps-install -Ayu \
  flatpak \
  udiskie \
  watchexec \
  wev \
  xcursorgen

xbps-pkgdb -m manual \
  flatpak \
  udiskie \
  watchexec \
  wev \
  xcursorgen

echo "Tools installed ..."
