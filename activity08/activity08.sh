#! /bin/sh
#
# Author :  TW
#
# Purpose : Collecting numbers (minimum 5, maximum 10) and then performing calculations and displays results to the user.
#
product=1
sum=0
average=0
min=0
max=0
while true
do
	echo "Please provide a number"
	read answer

if [[ $answer =~ [0-9] ]]
then

	if [ ${#array[@]} -ge 4 ]
	then
		echo "If you want to stop type 'STOP' or provide another number"
	fi

	array+=($answer)
	sum=$((sum + answer))
	product=$((product * answer))

	if [ ${#array[@]} -ge 10 ]
	then
		echo "That's all!"
		break
	fi
elif [ "$answer" = "STOP" ] || [ "$answer" = "stop" ]
then
	break
else
	echo "This is not a number!"
fi
done
echo
echo -e "Here are your numbers\t\t: " ${array[@]}

max=${array[0]}
min=${array[0]}
average=$((sum / ${#array[@]}))
for number in "${array[@]}"
do
	((number > max)) && max=$number
	((number < min)) && min=$number
done
echo -e "Product of the entered numbers\t: " $product
echo -e "Average of the entered numbers\t: " $average
echo -e "Sum of the entered numbers\t: " $sum
echo -e "Minimum entered number\t\t: " $min
echo -e "Maximum entered number\t\t: " $max
echo

