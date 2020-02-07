#!/bin/bash
# Authors : Umar Haroon & Jack Santaniello
# Date: 2/7/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

#getting info from user
#echo "Enter File Name"
#read fileName
#echo "Enter RegEx Pattern"
#read pattern
#grep $pattern $fileName


#instead of asking for input, i'm using args
fileName=$1
pattern=$2

#print fileName and pattern
echo "fileName: $fileName"
echo "pattern $pattern"

grep $pattern $fileName

echo "printing number of phone numbers"
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt


let emails=$(grep -c "@" regex_practice.txt)
echo "number emails:$emails"

echo "printing phone Numbers now"
grep "303" regex_practice.txt


#getting all geocities emails, saving to file, then printing the file
echo "saving all geocities emails to geocitiesemails.txt"

grep "geocities.com" regex_practice.txt >> geocitiesemails.txt

echo "printing geocitites emails"

cat geocitiesemails.txt

git add geocitiesemails.txt
git commit . -m "add emails"
git push origin master
