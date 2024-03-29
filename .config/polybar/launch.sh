#!/usr/bin/env bash

DIR="$HOME/.config/polybar/"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q left -c "$DIR"/config.ini & 
polybar -q middle -c "$DIR"/config.ini &
polybar -q right -c "$DIR"/config.ini 
