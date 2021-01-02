#!/bin/bash

echo "Updating BASH Prompt Files"

PURELINE="../prompt/pureline/pureline"
SMD5=$(md5 -q $PURELINE)
DMD5=$(md5 -q $HOME/.pureline)
if [ "$SMD5" != "$DMD5" ]; then
    echo "  Updating pureline"
    install -b -C $FILE $HOME/$DEST
else
    echo "  Skipping pureline (No change)"
fi

#echo "  Updating pureline"
#install -b -C ../prompt/pureline/pureline $HOME/.pureline

for FILE in dot.*; do
    DEST=$(echo $FILE | cut -c 4-)
    if [ -e $HOME/$DEST ]; then
        SMD5=$(md5 -q $FILE)
        DMD5=$(md5 -q $HOME/$DEST)
        #echo "    OLD=$SMD5"
        #echo "    NEW=$DMD5"
        if [ "$SMD5" != "$DMD5" ]; then
            echo "  Updating$HOME/$DEST with $FILE"
            install -b -C $FILE $HOME/$DEST
        else
            echo "  Skipping $FILE (No change)"
        fi
    else
        echo "  Skipping $FILE (Not installed)"
    fi
done
echo "Done!"
