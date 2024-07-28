#!/bin/bash

check_updates() {
	echo " cheking updates ... "
	sudo apt update -y
	Updates_check=$(apt list --upgradable 2>/dev/null | grep -c upgradable)

	if [ "$Updates_check" -gt 0 ]; then
		echo " Updates avaiable: $Updates_check."
		return 0
	else
		echo " System is updated. There are no updates."
		return 1
	fi
}

if check_updates; then
	install_updates
else
	echo " Completed installing updates."
fi

