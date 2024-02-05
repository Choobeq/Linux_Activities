#! /bin/sh
#
# Author  : TW
#
# Purpose : To return reverse number.
#
echo
echo -ne "Enter your number\t: "
read number
if [[ $number =~ ^[0-9]+$ ]]
then
	echo -ne "Your number in reverse\t: " 
	echo $number | rev
	echo
else 
	echo "It's not a number! Try again."
	echo
fi
