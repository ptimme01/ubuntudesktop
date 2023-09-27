#!/bin/bash
set -e
echo This scripts configures the ptimme01 user after they have already logged into gnome
echo The following must already have been done
echo 1) Use file manager and connect cymcore.com\vol1 and save UN/PW to keychain
echo 2) Launch vs code and install the "docker" and "remote development" extensions
echo 3) In vs code set preferences search for docker path an update BOTH to /usr/bin/podman
echo '*****'
echo '*****'
echo '*****'
echo "This script will pause until you press Enter."
read
echo "You pressed Enter. Resuming script execution."



gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true



echo '*****'
Install gnome extension (using extension manager) Gesture Improvements

