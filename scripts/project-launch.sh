#!/bin/bash

CHOICE=$(echo -e "🐞 Insecto Theme" | rofi -dmenu -i -p "Project Launch")

case "$CHOICE" in
    "🐞 Insecto Theme") ~/NextcloudLocal/persos/scripts/launch-project/insecto/launch-insecto-theme.sh;;
esac

