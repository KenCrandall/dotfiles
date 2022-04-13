#!/bin/bash

echo "Installing BASH Prompt"

echo "  Installing pureline to $HOME/.pureline"
install -b -C ../prompt/pureline/pureline $HOME/.pureline

for FILE in dot/bash/dot.*; do
    DEST=$(echo $FILE | cut -c 4-)
    echo "  Copying $FILE to $HOME/$DEST"
    install -b -C $FILE $HOME/$DEST
done
echo "Done!"
