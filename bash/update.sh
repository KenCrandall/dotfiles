#!/bin/bash

echo "Updating BASH Prompt Files"

for FILE in dot.*; do
  DEST=$(echo $FILE | cut -c 4-)
  if [ -e $HOME/$DEST ]; then
    echo "  Updating$HOME/$DEST with $FILE"
    install -b -C $FILE $HOME/$DEST
  else
    echo "  Skipping $FILE (Not installed)"
  fi
done
echo "Done!"

