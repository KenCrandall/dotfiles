#!/bin/bash

#
#git submodule update --init --recursive

echo "Building powerline-go"
cd powerline
go build -o ..
cd ..
echo "Installing powerline-go"
install -d $HOME/bin
install -C powerline-go $HOME/bin/
