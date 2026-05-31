#!/bin/bash

servers=("aws" "gcp" "azure")
cnt=0

for server in ${servers[@]}
do
    ((cnt++))
    echo "server $cnt deployed on $server"
done

