#!/bin/sh
if [ $# -ne 2 ]
then
        echo " not specified."
        exit  1
else
	writefile=$1
	writestr=$2
	mkdir -p "$(dirname "$1")"
	touch "$1"
if [ ! -f "$1" ]
then	
	echo "$1 could not be created."
	exit 1
fi
echo "$2" >> "$1"
fi
