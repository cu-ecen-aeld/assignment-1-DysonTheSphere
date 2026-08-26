#!/bin/bash

# Enough arguments?
if [ $# -lt 2 ]; then
        echo 'Usage: ./writer.sh [FILE] [STRING]'
        exit 1
else
        mkdir -p $(dirname $1)
        # did it fail?
        if [ $? -ne 0 ]; then
                echo 'Error: failed to create directory'
        fi

        echo $2 > $1
fi
