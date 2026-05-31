#!/bin/bash

SERVICE=apache2

if ! systemctl is-active --quiet $SERVICE
then
    echo "$SERVICE is unactive"
    sudo systemctl restart $SEVICE
    echo "$SERVICE is restarting"
else
    echo "$SERVICE is running"
fi

    
