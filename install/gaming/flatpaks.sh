#!/bin/bash

flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install --user -y \
	com.vysp3r.ProtonPlus \
	net.davidotek.pupgui2 \
	com.heroicgameslauncher.hgl
