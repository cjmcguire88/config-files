#!/usr/bin/env bash

NEW=$(aria2c -q -x 3 -m 3 -d /run/user/1000 https://www.kernel.org/finger_banner && awk '{print $NF}' /run/user/1000/finger_banner | head -n 1 && rm -f /run/user/1000/finger_banner*)

OLD=$(uname -r | awk -F "-" '{print $1}')

if [ ! "$OLD" = "$NEW" ]; then
    echo "  $(uname -r)"
else
    echo $(uname -r)
fi
