#!/bin/bash

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install -y it.mijorus.gearlever
flatpak install -y com.bitwarden.desktop
flatpak install -y com.discordapp.Discord
flatpak install -y com.spotify.Client
flatpak install -y dev.zed.Zed
flatpak install -y md.obsidian.Obsidian
flatpak install -y org.dupot.easyflatpak
