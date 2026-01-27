#!/bin/bash

flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install --user -y \
  dev.zed.Zed \
  md.obsidian.Obsidian \
  org.gimp.GIMP \
  io.github.nate_xyz.Conjure \
  org.inkscape.Inkscape \
  com.obsproject.Studio \
  fr.handbrake.ghb

source ./install/apps/flatpak-lite.sh
