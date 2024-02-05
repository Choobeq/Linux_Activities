#! /bin/sh
#
# Author  : TW
# 
# Purpose : Comparing lottery numbers
#
shopt -s lastpipe

if [ -z "$1" ]
then
        echo "Missing all numbers! Please provide 6 numbers: 5 between 1-50 and 1 between 1-10 seperated by space"
	exit 1
elif [ -z "$2" ]
then
        echo "Missing 2nd, 3rd, 4th, 5th and 6th number! Please provide 6 numbers: 5 between 1-50 and 1 between 1-10 seperated by space"
	exit 1
elif [ -z "$3" ]
then
        echo "Missing 3rd, 4th, 5th and 6th number! Please provide 6 numbers: 5 between 1-50 and 1 between 1-10 seperated by space"
	exit 1
elif [ -z "$4" ]
then
        echo "Missing 4th, 5th and 6th number! Please provide 6 numbers: 5 between 1-50 and 1 between 1-10 seperated by space"
	exit 1
elif [ -z "$5" ]
then
        echo "Missing 5th and 6th number! Please provide 6 numbers: 5 between 1-50 and 1 between 1-10 seperated by space"
	exit 1
elif [ -z "$6" ]
then
        echo "Missing 6th parameter! Please provide 6 numbers: 5 between 1-50 and 1 between 1-10 seperated by space" 
	exit 1
else
        echo "All numbers received!"
fi

numbers=($1 $2 $3 $4 $5 $6)

#echo ${numbers[@]}

# Verifying if numbers in range
for i in {0..4}
do
	#if [ -n ${numbers[i]} ] && [ ${numbers[i]} -eq ${numbers[i]} ] 2>/dev/null
	if [[ ${numbers[i]} =~ '^[0-9]+$' ]]
	then
		echo ${numbers[i]} "is not a number."
		exit 1
	elif [[ ${numbers[i]} -ge 51 ]] || [[ ${numbers[i]} -lt 1 ]]
	then
                echo ${numbers[i]} "is outside of the range. Please enter your numbers again!"
		exit 1
	else
		echo ${numbers[i]} "number veryfied!"
        fi
done

# Verifying if power ball in range
if [[ ${numbers[5]} -ge 11 ]] || [[ ${numbers[5]} -lt 1 ]]
then
	echo "Power ball is outside of the range. Please enter your numbers again!"
	exit 1
fi
match=0
cat tekst.txt | while read line
do
	for number in {0..5}
	do
		echo $number
		for column in {1..6}
		do 
			echo $column
			#check=$(echo $line | awk -F',' '{print$(column)}')

			check=$(echo $line | awk -F',' '{print$(column)}')

			echo $check
			if [[ ${numbers[number]} == check ]]
			then
				match+=1
			fi
		done
	done
done
echo $match






