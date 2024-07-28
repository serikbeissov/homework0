#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo " $0 path file"
	exit 1
fi

if [ ! -f "$1" ]; then
	echo " error: file '$1' not found"
	exit 1
fi

word_count=$(wc -w < "$1")

echo "words in file '$1': $word_count"

