#!/usr/bin/env bash


function main() {
    SINK=$(pw-play --list-targets | sed -n 's/^*.*"\(.*\)" prio=.*$/\1/p')
    VOLUME=$(pamixer --get-volume-human)
    case $1 in
        "up")
           pamixer -i 2
           ;;
        "down")
           pamixer -d 2
           ;;
        "mute")
           pamixer --toggle-mute
           ;;
        *)
            [[ ! $VOLUME =~ "muted" ]] && echo " ${VOLUME}" || echo "  "
            ;;
    esac
}

main $@
