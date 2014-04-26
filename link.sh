#!/bin/bash

DATE=$(date +%Y%m%d_%H%M%S)
CONFIG_DIR=".configuration"
SCRIPT=$(basename $0)

for FILE in $(ls $HOME/$CONFIG_DIR | grep -v $SCRIPT); do
    if [ "(" -e "$HOME/.$FILE" ")" -a "(" ! -h "$HOME/.$FILE" ")" ]; then
        echo -n "moving existing config '$FILE' out of the way first: "
        mv -v $HOME/.$FILE "$HOME/config_backup_$DATE:$FILE"
    fi
    ln -svfT $CONFIG_DIR/$FILE $HOME/.$FILE
done
