#!/bin/bash
val=$(find . -name "devops.txt")

if [ -n "$val" ]
then
    cat devops.txt
 else
    touch devops.txt
fi
