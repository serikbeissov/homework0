#!/bin/bash
if [[ ! -f "exercise5.txt" ]]; then
	echo "file not found"
	exit 1
fi
tac exercise5.txt
