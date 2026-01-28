#!/bin/bash

source ./install/apps/flatpak-lite.sh

flatpak install --user -y \
	dev.zed.Zed \
	md.obsidian.Obsidian \
	org.gimp.GIMP \
	io.github.nate_xyz.Conjure \
	org.inkscape.Inkscape \
	com.obsproject.Studio \
	fr.handbrake.ghb
