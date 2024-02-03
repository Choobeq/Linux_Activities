#! /bin/sh
#
#
#author: TW
#
#script purpose : rename files with the current date as extension
#
#usage : ./script.sh
#
DATE=$(date +'%Y%m%d')

echo
echo "Today is: $DATE"
ls | while read line
do
if [ $line == 'script.sh' ]
then
	echo $line "file wont be changed!"
elif [[ ${line: -8}  == $date ]]; then
	echo $line "File already has extension"
else
	mv $line $line.$DATE
fi
done
echo
