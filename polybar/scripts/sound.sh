#!/usr/bin/env bash

function main() {
    SINK=$(pw-play --list-targets | sed -n 's/^*.*"\(.*\)" prio=.*$/\1/p')
    VOLUME=$(pactl list sinks | sed -n "/${SINK}/,/Volume/ s!^[[:space:]]\+Volume:.* \([[:digit:]]\+\)%.*!\1!p")
    IS_MUTED=$(pactl list sinks | sed -n "/${SINK}/,/Mute/ s/Mute: \(yes\)/\1/p")

    case $1 in
        "up")
           pactl set-sink-volume @DEFAULT_SINK@ +10%
           ;;
        "down")
           pactl set-sink-volume @DEFAULT_SINK@ -10%
           ;;
        "mute")
           pactl set-sink-mute @DEFAULT_SINK@ toggle
           ;;
        *)
            [[ -z "${IS_MUTED}" ]] && echo " ${VOLUME}%" || echo "  "
            ;;
    esac
}

main $@
