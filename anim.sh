#!/bin/sh
for i in "$1"/*; do
	clear
	printf '%s %s\n' "$1" "${i##*/}"
	cat "$i"
	sleep 1
done
