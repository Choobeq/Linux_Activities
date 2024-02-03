#! /bin/bash
#
# Author : TW
#
# Purpose : Lottery
#

today=$(date +'%Y%m%d')
echo $(shuf -i 1-50 -n 5) > numbers.$today $(shuf -i 1-10 -n 1) >> numbers.$today

