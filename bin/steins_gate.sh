#!/bin/bash
CPU_LIMIT="75"
GAME_EXE="STEINSGATE.exe"
GAME_DIR="/home/ben/.wine/drive_c/Program Files/Steins;Gate"
schroot -p -c precise_i386 -u ben -d "$GAME_DIR" wine $GAME_EXE &
SCHROOT_PID="$!"
sleep 10
cpulimit -p $(pgrep -n "$GAME_EXE") -l $CPU_LIMIT
