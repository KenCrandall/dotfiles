#!/bin/bash

MYOS=$(uname -s)
OS=$(echo "$MYOS" | tr '[:upper:]' '[:lower:]')
BREW=$(which brew)

case $OS in
  darwin | linux)
    # macos or linux
    if [[ -x $BREW ]]; then
      echo "Executable 'brew' found at $BREW"
    else
      echo "Executable 'brew' not found"
      exit
    fi
  ;;
  *)
    # no clue
    echo "Unrecognized OS: No special sauce"
    exit
	;;
esac

#DIR=$HOME/Files
DIR=$(pwd)

echo "Checking homebrew pours..."
echo "Brew List" >$DIR/brew-list.txt
echo "---------" >>$DIR/brew-list.txt
brew list --formula >>$DIR/brew-list.txt

echo "Checking homebrew casks..."
echo "Brew Cask List" >$DIR/brew-cask-list.txt
echo "--------------" >>$DIR/brew-cask-list.txt
brew list --cask >>$DIR/brew-cask-list.txt

echo "Checking homebrew taps..."
echo "Brew Tap" >$DIR/brew-tap.txt
echo "--------" >>$DIR/brew-tap.txt
brew tap >>$DIR/brew-tap.txt

echo "Generating bundle (Brewfile)..."
HOST=$(hostname -s | tr '[:upper:]' '[:lower:]')
brew bundle dump -f --file=Brewfile.${HOST}

echo "Done!"
