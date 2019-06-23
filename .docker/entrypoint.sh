#!/bin/bash
args=()

pip install -r /plugins/requirements.txt

if [ ! -z "$SERIAL" ]; then
    args+=(--serial $SERIAL)
fi

if [ ! -z "$BAUD" ]; then
    args+=(--baud $BAUD)
fi

if [ ! -z "$CONNECT" ]; then
    args+=(--connect $CONNECT)
fi

if [ ! -z "$CONFIG_LOC" ]; then
    args+=(--config $CONFIG_LOC)
fi

nx584_server --listen $LISTEN "${args[@]}"
