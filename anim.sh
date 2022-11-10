#!/bin/sh
for i in "$1"/*; do
	clear
	cat "$i"
	sleep 1
done
