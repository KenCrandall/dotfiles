#!/bin/bash

echo "Installing BASH Prompt"

for FILE in dot.*; do
  DEST=$(echo $FILE | cut -c 4-)
  echo "Copying $FILE to $HOME/$DEST"
  install -C $FILE $HOME/$DEST
done

