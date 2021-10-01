#!/usr/bin/env bash

function main() {
    # Pipewire
    SOURCE=$(pw-record --list-targets | sed -n 's/^*.*"\(.*\)" prio=.*$/\1/p')
    SINK="Built-in Audio Analog Stereo"
    #VOLUME=$(pactl list sinks | grep -m1 "Volume" | awk -F "/" '{print $2}')
    #SINK=$(pw-play --list-targets | sed -n 's/^*.*"\(.*\)" prio=.*$/\1/p')
    VOLUME=$(pactl list sinks | sed -n "/${SINK}/,/Volume/ s!^[[:space:]]\+Volume:.* \([[:digit:]]\+\)%.*!\1!p")
    IS_MUTED=$(pactl list sinks | sed -n "/${SINK}/,/Mute/ s/Mute: \(yes\)/\1/p")

    action=$1
    if [ "${action}" == "up" ]; then
        pactl set-sink-volume @DEFAULT_SINK@ +10%
    elif [ "${action}" == "down" ]; then
        pactl set-sink-volume @DEFAULT_SINK@ -10%
    elif [ "${action}" == "mute" ]; then
        pactl set-sink-mute @DEFAULT_SINK@ toggle
    else
        if [ "${IS_MUTED}" != "" ]; then
            echo " ﱝ "
        else
            echo " ${VOLUME}%"
        fi
    fi
}

main $@
