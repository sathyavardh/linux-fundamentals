#!/bin/bash
SCRIPT="testing.sh"


if [ -f "$SCRIPT" ]
then
    if [ -x "$SCRIPT" ]
    then
        echo "file is executable and running it..."
        ./"$SCRIPT"
    else
        echo "$SCRIPT is not executable hence make it executable"
        chmod u+x "$SCRIPT"
        echo "Now running it"
        ./"$SCRIPT"
    fi
else
    echo "ERROR : $SCRIPT is not found"
fi

