#!/bin/bash

# Enough arguments?
if [ $# -lt 2 ]; then
        echo 'Usage: ./finder.sh [PATH] [TOKEN]'
        exit 1
else
        filesdir=$1
        searchstr=$2
        # validate filesdir
        if [ -d $filesdir ]; then
                X=$(find $filesdir -type f | wc -l)
        else
                echo "Error: Invalid directory '$filesdir'"
                exit 1
        fi

        Y=$(grep -r $searchstr $filesdir | wc -l)
        echo "The number of files are $X and the number of matching lines are $Y"
	exit 0
fi
