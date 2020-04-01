#!/bin/bash

# Generate new .nanorc with all syntax highlighting files

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

# Copy definitions to target
mkdir -p $FILEDIR
for FILE in $WORKDIR/*.nanorc
do
    cp -f $FILE $FILEDIR
done

# Add our options
cat $STUB > $NANORC
echo "" >> $NANORC
echo "## Syntax highlighing definitions" >> $NANORC
echo "" >> $NANORC

# Add syntax highlighting definitions
for FILE in $FILEDIR/*.nanorc
do 
    echo "include \"$FILE\"" >> $NANORC
done

# Add timestamp
echo "" >> $NANORC
echo "## .nanorc last generated on $STAMP" >> $NANORC
echo "" >> $NANORC

