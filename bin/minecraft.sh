#!/bin/bash
killall ibus-daemon
java -Xmx2048m -Xmx3096m -jar /home/ben/.minecraft/minecraft.jar
ibus-daemon --xim -r &
