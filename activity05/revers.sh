#! /bin/sh
#
# Author  : TW
#
# Purpose : To return reverse number.
#
echo
echo -ne "Enter your number\t: "
read number
echo -ne "Your number in reverse\t: " 
echo $number | rev
echo
