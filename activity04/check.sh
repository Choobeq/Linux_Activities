#! /bin/sh
#
# Author  : TW
#
# Purpose : Checking how secure password is.
#
#
echo
echo "Enter your password to check how secure it is:"
read password
if [ ${#password} -lt 8 ]
then
	echo -e "password length\t\t\t: password must be minimum 8 characters long"
else
	echo -e "password length\t\t\t: OK"
fi
if [[ $password =~ [0-9] ]]
then
	echo -e "numbers in password\t\t: OK"
else
	echo -e "numbers in password\t\t: FAIL - no numbers in password"
fi
if [[ $password =~ [A-Z] ]]
then
	echo -e "uppercase letters in password\t: OK"
else
	echo -e "uppercase letters in password\t: FAIL - password must contain at least one capital letter"
fi
if [[ $password =~ [a-z] ]]
then
	echo -e "lowercase letterss in password\t: OK"
else
	echo -e "lowercase lletters in password\t: FAIL - password must contain at least one small letter"
fi
if [[ $password == *['!'@#\£$%^\&*()_+]* ]]
then
	echo -e "special characters in password\t: OK"
else
	echo -e "special characters in password\t: FAIL - password must contain at least one special charracter"
fi
echo

