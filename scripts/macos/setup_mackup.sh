#!/bin/bash

CFG=$HOME/.mackup.cfg

echo "Setting Mackup storage to icloud"
echo "[storage]" > $CFG
echo "engine = icloud" >> $CFG
echo
echo "Setup complete"
echo
echo "To restore: mackup restore"
