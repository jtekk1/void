#!/bin/bash

set +e

if [ $EUID -ne 0 ]; then
	echo "Please run as root!"
	exit
fi

xbps-install -y \
	cargo \
	go \
	luarocks \
	nodejs \
	ruby \
	rust \
	uv

echo "Tools installed ..."
