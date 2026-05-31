#!/bin/bash
echo "Enter the number"
read num
if [ $num -gt 10 ]
then
    echo "$num is greater than 10"
else
    echo "$num is lesser than 10"
fi

