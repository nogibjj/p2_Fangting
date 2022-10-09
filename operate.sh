#!/bin/bash
if [ -e "$1" ]
then
	lines=$(wc -l < $1)
	echo "The dataset" $1 "has" $lines "rows of data."

	sorted=$(tail -n+2 $1 | sort -t, -k5n,5 -k1n,1 > output.csv)
	
	while IFS=, read -r col1 col2 col3 col4 col5 col6
	do
		if [ $col4 ] && [ $col5 ] && [ $col5 -gt 50 ] && [ $col5 -lt 60 ] 
		then
			echo "$col2": "$col3"
		fi
	done < output.csv > output.txt
else
	echo "The file do not exist!"
fi