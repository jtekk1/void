#!/bin/bash

flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install --user -y \
	it.mijorus.gearlever \
	com.bitwarden.desktop \
	com.discordapp.Discord \
	com.spotify.Client \
	org.dupot.easyflatpak \
	com.rafaelmardojai.Blanket \
	com.spotify.Client
