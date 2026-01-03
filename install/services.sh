#!/bin/bash

usermod -aG _seatd $REAL_USER
ln -s /etc/sv/seatd /var/service/
ln -s /etc/sv/dbus /var/service/
ln -s /etc/sv/elogind /var/service/
ln -s /etc/sv/bluetoothd /var/service/
ln -s /etc/sv/swayosd-libinput-backend /var/service/
ln -s /etc/sv/NetworkManager /var/service/
ln -s /etc/sv/sshd /var/service/
