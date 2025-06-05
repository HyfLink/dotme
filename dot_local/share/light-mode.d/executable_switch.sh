#!/usr/bin/bash

# See https://wiki.archlinux.org/title/GTK
gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'

# trigger a small, passive popup dialog to inform the user about darkman's activity
# reference https://wiki.archlinux.org/title/Desktop_notifications#Usage_in_programming
makoctl reload
notify-send --app-name="darkman" --urgency=low "switch to light mode"

# Restart fcitx5
fcitx5 --replace -d &

# Restart waybar
systemctl --user restart waybar.service
