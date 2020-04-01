#!/bin/bash

#DIR=$HOME/Files
DIR=$(pwd)

echo "Checking homebrew pours..."
echo "Brew List" > $DIR/brew-list.txt
echo "---------" >> $DIR/brew-list.txt
brew list >> $DIR/brew-list.txt

echo "Checking homebrew casks..."
echo "Brew Cask List" > $DIR/brew-cask-list.txt
echo "--------------" >> $DIR/brew-cask-list.txt
brew cask list >> $DIR/brew-cask-list.txt

echo "Checking homebrew taps..."
echo "Brew Tap" > $DIR/brew-tap.txt
echo "--------" >> $DIR/brew-tap.txt
brew tap >> $DIR/brew-tap.txt

echo "Done!"
