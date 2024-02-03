#! /bin/sh
#
# Author  : TW
#
# Purpose : To display username, date, time, current working directory and the biggest file
#
current_path=$(pwd)
today=$(date +"%A %D %B %Y")
t_time=$(date +%T)
biggest_file=$(du -sh * |sort -hr | head -n 1)
echo
echo -e "Your username\t\t : " $USER
echo -e "Todays is\t\t : " $today
echo -e "Time\t\t\t : " $t_time
echo -e "Current directory\t : " $current_path
echo -e "The biggest file\t : " $biggest_file
echo 
