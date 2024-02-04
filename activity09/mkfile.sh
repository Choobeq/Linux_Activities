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

else
	if [ -f "$1" ]
	then
		echo "File with <" $1 "> name exists. Choose different name"
	else
		touch $1
		echo "File <" $1 "> created succesfully."
	fi
fi
echo

