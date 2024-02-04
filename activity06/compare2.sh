#! /bin/sh
#
# Author  : TW
#
# Purpose : Checking difference between two numbers.
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

        elif [[ $1 -ge $2 ]]
        then
		echo "Difference between number" $1 "and number" $2 "is" $(($1-$2))
        else
		echo "Difference between number" $2 "and number" $1 "is" $(($2-$1))
        fi
else
        echo "No numbers, no results ;)"
fi
echo
