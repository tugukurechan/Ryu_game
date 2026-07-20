#!/bin/sh
printf '\033c\033]0;%s\a' Ryu★から逃げろ!!

function app_realpath() {
    SOURCE=$1
    while [ -h "$SOURCE" ]; do
        DIR=$(dirname "$SOURCE")
        SOURCE=$(readlink "$SOURCE")
        [[ $SOURCE != /* ]] && SOURCE=$DIR/$SOURCE
    done
    echo "$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
}

BASE_PATH="$(app_realpath "${BASH_SOURCE[0]}")"
"$BASE_PATH/Ryu_game_mac.app/Contents/MacOS/Ryu★から逃げろ!!" "$@"

