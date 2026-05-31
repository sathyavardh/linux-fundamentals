#!/bin/bash

echo "enter the name"
read username
echo "enter the age"
read age
echo "enter the role"
read role

if [ "$role" = "admin" ] && [ $age -gt 18 ]
then
    echo "Access Granted"
else
    echo "Access Denied"
fi


