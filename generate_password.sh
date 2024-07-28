#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo " $0 <lenght>"
	exit 1
fi

pass_lenght=$1
output_file="new_password.txt"

if ! [[ "$pass_lenght" =~ ^[0-9]+$ ]] || [ "$pass_lebght" -le 0 ]; then
	echo "error! enter a positive number"
	exit 1
fi

> "$output_file"
Password=$(< /dev/urandom tr -dc 'A-Za-z0-9!@#$%^&*()_+' | head -c "$pass_lenght")
	echo "$Password" >> "$output_file"

echo "new passowrd in '$output_file'."
