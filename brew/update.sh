#!/bin/bash

TIME=$(date "+%Y-%m-%d at %H:%M:%S")
MYOS=$(uname -s)
OS=$(echo "$MYOS" | tr '[:upper:]' '[:lower:]')
BREW=$(which brew)
DIR=$(pwd)
HOST=$(hostname -s | tr '[:upper:]' '[:lower:]')

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


BLIST=$DIR/brew-list-${HOST}.txt
echo "Checking homebrew pours..."
echo "Brew List" >$BLIST
echo "---------" >>$BLIST
brew list --formula >>$BLIST

BCASK=$DIR/brew-cask-list-${HOST}.txt
echo "Checking homebrew casks..."
echo "Brew Cask List" >$BCASK
echo "--------------" >>$BCASK
brew list --cask >>$BCASK

BTAPS=$DIR/brew-tap-${HOST}.txt
echo "Checking homebrew taps..."
echo "Brew Tap" >$BTAPS
echo "--------" >>$BTAPS
brew tap >>$BTAPS

echo "Generating bundle (Brewfile)..."
brew bundle dump -f --file=Brewfile.${HOST}

echo "Updating Git and pushing to upstream..."
git add .
git commit -m "homebrew updated at $TIME"
git push

echo "Done!"
