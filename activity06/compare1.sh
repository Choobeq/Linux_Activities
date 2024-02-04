#! /bin/sh
#
# Author  : TW
#
# Purpose : Comparing numbers
#
echo
if [ -z "$1" ]
then
        echo "Missing numbers! Please provide 2 numbers!"
elif [ -z "$2" ]
then
        echo "Missing numbers! Please provide 2 numbers!"
fi

if [[ $1 == [0-9] ]] || [[ $1 -lt 0 ]] && [[ $2 == [0-9] ]] || [[ $2 -lt 0 ]]
then
	if [[ $1 == $2 ]]
	then
		echo "Both numbers are equal!"
	elif [ $1 -ge $2 ]
	then
		echo "TRUE - Number" $1 "is greater then" $2
	else
		echo "FALSE - Number" $1 "is not greater then" $2
	fi
else
	echo "No numbers, no results ;)"
fi
echo
