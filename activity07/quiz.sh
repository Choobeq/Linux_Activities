#! /bin/sh
#
# Author : TW
#
# Purpose : True or false Quiz
#
shopt -s lastpipe
echo "*****************************"
echo "* Welcome to the Movie Quiz *"
echo "*****************************"
correct=0
wrong=0
cat questions | while read line
do
	echo -e "Question\t:"
	echo $line | awk -F';' '{print$1}'
	question=$(echo $line | awk -F';' '{print$2}')
	read answer < /dev/tty 

	answer=${answer^^}
	echo $question
	echo $answer
	if [[ "$question" == "$answer" ]]
	then
		echo "Congrats! Correct Answer!"
		correct=$((++correct))
		echo $correct
	else
		echo "Wrong Answer!"
		wrong=$((++wrong))
		echo $wrong

	fi
	echo "Would you like to continue? Y/N"
	read cont < /dev/tty
	cont=${cont^^}
	if [[ $cont = "Y" ]]
	then
		echo $cont
	else
		break
	fi
done
echo "Correct answers: " $correct
echo "Wrong answers  : " $wrong


