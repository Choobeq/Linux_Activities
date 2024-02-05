#! /bin/bash
#
# Author  : TW
#
# Purpose : Lottery
#

shopt -s lastpipe
today=$(date +'%Y%m%d')
for numbers in {1..10}
do 
	check=1
	while true
	do
		r_number=$((1 + $RANDOM % 50))
		if [ $numbers -ge 2 ]
		then
			cat $today | while read line
			do
				if [ $r_number == $line ]
				then
					check=0
					break
				else
					check=1
				fi
			done
		else
			check=1
			break

		fi
		if [ $check == 1 ]
		then
		#	echo $r_number >> $today
			break
		#else
		#	break
		fi
	done
	if [ $check == 1 ]
        then
        	echo $r_number >> $today
	fi




done
echo $((1 + $RANDOM % 10)) >> $today
