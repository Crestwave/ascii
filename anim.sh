#!/usr/bin/env bash
trap "printf '\e[?25h'; exit 0" EXIT
printf '\e[?25l;\e[2J'

for i in "$1"/*; do
	printf '\e[H'
	printf '%s %s\n' "$1" "${i##*/}"
	printf '%s\n' "$(< $i)"
	read -rt 1
done
