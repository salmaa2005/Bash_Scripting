#!/bin/bash
mynum=300
#variables are declared without any spaces

if [ $mynum -eq 300 ]; then   #there has to be spaces between the square brackets and what's inside
	echo "mynum is equal to 300" #we leave an indentation to be consistent
else
	echo "mynum is not equal to 300"
fi #this marks the end of the if statement

#we can execute either in the cmd line by writing bash myscript.sh
#or using the shebang and running the script directly
#the shebang is used to indicate the interpreter to use
