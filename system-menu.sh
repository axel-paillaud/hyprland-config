#!/bin/bash

CHOICE=$(echo -e "🔒 Verrouiller\n🚪 Déconnexion\n🌙 Veille\n💾 Hibernation\n🔄 Redémarrer\n⏻ Éteindre" | rofi -dmenu -i -p "Système")

case "$CHOICE" in
    "🔒 Verrouiller") swaylock -f -c 000000 ;;
    "🚪 Déconnexion") hyprctl dispatch exit ;;
    "🌙 Veille") swaylock -f -c 000000 && systemctl suspend ;;
    "💾 Hibernation") swaylock -f -c 000000 && systemctl hibernate ;;
    "🔄 Redémarrer") systemctl reboot ;;
    "⏻ Éteindre") systemctl poweroff -i ;;
esac

