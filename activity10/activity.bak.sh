#! /bin/sh
#
# Author  : TW
#
# Purpose : Creates file if doesn't exists
#
echo
if [ -z "$1" ]
then
        echo "Please provide filename!"
elif [ -z "$2" ]
then
	echo "Please provide how many random numbers you need."
else
	if [ -f "$1" ]
	then
		echo "File with <" $1 "> name exists. Choose different name"
	else
		if [ -n $2 ] &&  [ $2 -eq $2 ] 2>/dev/null
		then
			random_numbers=0
			touch $1
			while [ $random_numbers -lt $2 ]
			do 
				echo $((1 + $RANDOM % 10)) >> $1
				random_numbers+=1
			done
		fi
	fi
fi
echo

