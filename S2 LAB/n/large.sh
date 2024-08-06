#!/bin/bash
read -p"enter the first number" n1
read -p "enter the second number" n2
read -p "enter the third number" n3
if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ]
then
echo "$n1 is greater";
elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ]
then
echo "$n2 is greater";
else
echo "$n3 is greater";
fi