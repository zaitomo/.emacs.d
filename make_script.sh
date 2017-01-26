#!/bin/bash

arg=$1
clean="clean"

if [ $arg != $clean ]; then
	make EXEC=$arg
elif [ $2 ]; then
	make $clean EXEC=$2
else
	make $clean
fi

exit 0
