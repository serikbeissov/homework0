#!/bin/bash

if [ $# -ne 1 ]; then
	echo "word: $0 "
	exit 1
fi
word="$1"
echo "search files with '$word':"
find . -type f -exec grep -l "$word" {} \;

if [ $? -eq 0 ]; then
	echo "search end"
else 
	echo "error"
fi
