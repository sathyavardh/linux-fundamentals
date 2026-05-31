#!/bin/bash

echo "Enter the option"
read option

case $option in

start)
    echo "starting the server"
    ;;
stop)
    echo "stoping the server"
    ;;
restart)
    echo "restarting the server"
    ;;
*)
    echo "invalid option"
    ;;
esac
