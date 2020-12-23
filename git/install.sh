#!/bin/bash

echo "Installing Git Config Files"

for FILE in dot.*; do
  DEST=$(echo $FILE | cut -c 4-)
  echo "Copying $FILE to $HOME/$DEST"
  install -b -C $FILE $HOME/$DEST
done

