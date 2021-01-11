#!/bin/bash

CONF="$HOME/.config/bat"
THEMES="$CONF/themes"

echo "Installing bat config and themes..."
echo "  Copying bat/config to $HOME/.config/bat/config"
install -d $CONF
install -b -C bat/config $CONF/config

install -d $THEMES
find bat/themes -iname "*.tmtheme" | while read FILE; 
do
    DEST=$(echo "$FILE" | cut -c 12-)
    echo "  Installing theme $FILE to ..."
    install -b -C "$FILE" "$THEMES/$DEST"
done

echo "  Clearing bat cache..."
bat cache --clear 2>&1 > /dev/null
echo "  Building new bat cache..."
bat cache --build 2>&1 > /dev/null
echo "Done!"

