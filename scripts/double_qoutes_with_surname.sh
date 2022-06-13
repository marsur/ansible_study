#!/bin/bash


#question
echo "What is your name?"


#variable 
read batman

#variable with double qoutes 
batman=\"${batman}\"



#output to text

echo My name is $batman > 1.txt

cat 1.txt


echo And what is your Surname?

read batman2

batman2=\"${batman2}\"

echo My name is $batman $batman2 > 1.txt 
