#!/bin/bash

# Wrapping around () creates an array for pos_pw_list
pos_pw_list=($(grep "pos_pw_list" level3.py | grep -o '[0-9a-f]\{4\}'))

# brute force
for pw in "${pos_pw_list[@]}"
do
	result=$(echo "$pw" | python3 level3.py)
	if [[ "$result" =~ "Welcome" ]]; then
		echo "Password found: $pw"
		echo "$result" | grep "pico"
		break
	fi
done

#also possible:
# grep "pos_pw_list" level3.py | grep -o '[0-9a-f]\{4\}' | while read -r pw; do
#     echo "$pw" | python3 level3.py
# done