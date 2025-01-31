#!/bin/bash

SCREENSHOT_DIR="$HOME/Images/Captures d’écran"
mkdir -p "$SCREENSHOT_DIR"

FILENAME="screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"
FULL_PATH="$SCREENSHOT_DIR/$FILENAME"

grim -g "$(slurp -c '#00000000')" "$FULL_PATH"

wl-copy < "$FULL_PATH"

notify-send "Capture d'écran" "Enregistrée dans $FULL_PATH et copier dans le presse-papier"

