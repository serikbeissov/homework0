#!/bin/bash

file_count=0
dir_count=0

for item in *; do
	if [ -e "$item" ]; then 
		if [ -f "$item" ]; then
			((file_count++))
		elif [ -d "$item" ]; then
			((dir_count++))
		fi
	fi
done

echo " files count: $file_count"
echo " directories count: $dir_count"
