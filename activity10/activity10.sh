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
			touch $1
			for random_numbers in $(seq 1 $2) 
			do 
				echo $((1 + $RANDOM % 100)) >> $1
				random_numbers+=1
			done
			echo "All" $2 "numbers saved to the file <" $1 ">."
		fi
	fi
fi
echo

