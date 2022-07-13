#!/bin/bash

test="some information"
if [[ "$test" == *"info"* ]]; then
    echo "Substring is found";
fi