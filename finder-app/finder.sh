#!/bin/sh
if [ $# -ne 2 ]
then
	echo " not specified."
	exit  1
else
	filesdir=$1
	searchstr=$2
if [ ! -d "$1" ]
then
        echo "$1 is not a directory."
else
	echo "The number of files are $(find $1 -type f | wc -l) and the number of matching lines are $(grep -o -r $2 $1 | wc -l)"
fi

fi
