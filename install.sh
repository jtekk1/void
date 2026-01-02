#!/bin/bash

set +e

source ./install/repos.sh
source ./install/core.sh
source ./install/cli.sh
source ./install/tuis.sh
source ./install/tools.sh
source ./install/fonts.sh
source ./install/thinkpad.sh
source ./install/mango-wm.sh
source ./install/guis.sh
source ./install/apps.sh
source ./install/extras.sh
source ./install/flatpaks.sh
source ./install/apps/ble.sh
source ./install/apps/brew.sh

echo "DONE!!!"
sleep 1
reboot
