#!/bin/bash

xbps-install -Syu

xbps-install -SAyu \
  void-repo-multilib \
  void-repo-multilib-nonfree \
  void-repo-nonfree

xbps-pkgdb -m manual \
  void-repo-multilib \
  void-repo-multilib-nonfree \
  void-repo-nonfree

xbps-install -Syu
