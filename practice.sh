#!/bin/bash
#
#
#
#echo "enter a number"
#read numOne
#echo "enter a secont number"
#read numTwo
#sum=$(($numOne+$numTwo))
#echo "The sum: $sum"
#let prod=numOne*numTwo
#echo "Prod is: $prod"
echo "File Name: $0"
echo "Command Line Argument 1: $1"
grep $1 $2
