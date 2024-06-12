#!/bin/bash
#we can execute either in the cmd line by writing bash myscript.sh
#or using the shebang and running the script directly
#the shebang is used to indicate the interpreter to use
mynum=300
#variables are declared without any spaces

if [ $mynum -eq 300 ]; then   #there has to be spaces between the square brackets and what's inside
	echo "mynum is equal to 300" #we leave an indentation to be consistent
else
	echo "mynum is not equal to 300"
fi #this marks the end of the if statement

#_________________________________________________________________
if [ ! $mynum -eq 300 ]; then #same as [ $mynum -ne 300 ]
	echo "mynum is not equal to 300"
else
	echo "mynum is equal to 300"
fi

# -gt -> greater than

#_________________________________________________________________
if [ -f ~/myscript ]; then #checks if the file named myscript exists
	echo "File exists"
else
	echo "File does not exist"
fi
# -d -> checks if the directory exists

#_________________________________________________________________

command=/usr/bin/htop
if [ -f $command ]; then #same as if [ -f /usr/bin/htop ];
	echo "Command is available, let's run it..."
else
	echo "Command isn't available, installing it..."
	sudo apt update && sudo apt install -y htop
fi
$command #same as simply running htop

# -y -> "assume yes" and it means just install everything without asking
# we do this because scripts' purpose is to automate tasks so asking means u have to be
# right in front of it so there's no automation
#__________________________________________________________________

com=htop

if command -v $com; then #command -v checks if the command is available or can be executed
	echo "Command is available, let's run it..."
else
	echo "Command isn't available, installing it..."
	sudo apt update && sudo apt install -y &
	com
fi

#square brackets in the if statements are needed only if you're running the test command
#if we use them we're using the test command even if we don't actuallu type it
#command -v can be used in the termianl to check if a command
