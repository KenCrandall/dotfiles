#!/bin/bash

# Update .nanorc with new syntax highlighting files

# Current working dir
WORK=$(pwd)

# Date for timestamp
STAMP=$(date)

# File to generate
NANORC=$HOME/.nanorc

# Directory with syntax highlighting definition files
WORKDIR=$WORK/nano

# Target directory for syntax highlighting definitions
FILEDIR=$HOME/.nano

# Stub file with other nano options (edit this file and then
#    regenerate to set Nano options!)
STUB=$WORK/nanorc-stub

# Add our options
cat $STUB >$NANORC
echo "" >>$NANORC
echo "## Syntax highlighing definitions" >>$NANORC
echo "" >>$NANORC

echo "Updating .nanorc and syntax highlighting definitions"

# Copy definitions to target and add to our config
mkdir -p $FILEDIR
for EACH in $WORKDIR/*.nanorc; do
    FILE=$(basename $EACH)
    if [ -e $FILEDIR/$FILE ]; then
        echo "  Updating $FILEDIR/$FILE with $FILE"
        install -b -C $EACH $FILEDIR/$FILE
        # Add syntax highlighting definition
        echo "include \"$FILEDIR/$FILE\"" >>$NANORC
    else
        echo "  Skipping $FILE (Not installed)"
    fi
done

# Add timestamp
echo "" >>$NANORC
echo "## .nanorc last generated on $STAMP" >>$NANORC
echo "" >>$NANORC

echo "Done!"
