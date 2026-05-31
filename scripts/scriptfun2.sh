#!/bin/bash

function testing(){
    echo "file will create, pls wait"
    read test
    touch $test
    echo "$test file has been created"
}
testing
