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

echo "Today is: $DATE"
ls | while read line
do
if [ $line == 'script.sh' ]
then
	echo $line "file wont be changed!"
elif [ $line == .*\. ]; then
	echo $line "File already has extension"
else
	#for line in $(ls file*)
	mv $line $line.$DATE
fi
done

