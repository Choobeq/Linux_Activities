#! /bin/sh
#
# Author : TW
#
# Purpose : Checking how secure password is.
#
#
echo "Enter your password to check how secure it is:"
read password
if [ ${#password} -lt 8 ]
then
	echo echo "password must be minimum 8 character long"
else
	echo -e "password length\t\t\t: OK"
fi
if [[ $password =~ [0-9] ]]
then
	echo -e "numbers in password\t\t: OK"
else
	echo "password must contain numbers"
fi
if [[ $password =~ [A-Z] ]]
then
	echo -e "uppercase letters in password\t: OK"
else
	echo "password must contain capital letters"
fi
if [[ $password =~ [a-z] ]]
then
	echo -e "lowercase letters in password\t: OK"
else
	echo "password must contain small letters"
fi
if [[ $password == *['!'@#\£$%^\&*()_+]* ]]
then
	echo -e "special carracters in password\t: OK"
else
	echo "password must contain special charracters"
fi

