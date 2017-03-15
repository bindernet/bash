#!/bin/env bash
XIFS="${IFS}"
IFS='|'

printf 'Delimiter set to %s\n' "$IFS"
while read -a LINE; do
    for (( i=0; i< ${#LINE[@]}; i++ )); do
	echo "${LINE[$i]}" >> ./${1}.out${i}
    done
done < "$1"
IFS="${XIFS}"
