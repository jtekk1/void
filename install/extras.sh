#!/bin/bash

set +e

xbps-install -Ayu \
  asciiquarium \
  asciiquarium \
  cmatrix \
  pipes.c

echo "Extras are now installed..."
