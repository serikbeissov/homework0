#!/bin/bash
directory=("/home/sbeissov/techorda/homework0/Directory2")
back_dir="/home/sbeissov/techorda/homework0/backup"
date_now=$(date +"%Y-%m-%d")
mkdir -p "$back_dir"
for DIR in "${dirirectory[@]}"; do
	DIR_name=$(basename "$DIR")
	BACK_file="$back_dir/${DIR_name}_backup_$date_now.tar.gz"
	
	tar -czf "$BACK_file" "$DIR" && echo "backup for $DIR create as $BACK_file"
done 
