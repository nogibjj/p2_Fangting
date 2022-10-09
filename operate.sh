#!/bin/bash
lines=$(wc -l < $1)
echo "The dataset" $1 "has" $lines "rows of data."

LINE=1

while read -r CURRENT_LINE
	do
		echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < $1