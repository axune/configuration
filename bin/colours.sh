#!/bin/bash
for I in $(seq -w 31 38); do 
    echo -e "\033[0;${I}m==========="; 
    for J in $(seq -w 0 9); do 
        echo -e "\033[${J};${I}mColour $J;$I\033[0m"; 
    done; 
done
