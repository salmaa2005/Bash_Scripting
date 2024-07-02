#!/bin/bash
# the difference between an argument and a variable is that the argument
# is passed in the command line while the variable is defined within the script

: << COMMENT
# For example:

echo "You entered the arguments: $1, $2, $3 and $4"

# when we type ls -l /etc
# -l is an option while /ect is an argument
# ___________________________________________________________________________________
# another example:

lines=$(ls -l $1 | wc -l)
# wc: is the word count command
# the option -l counts the lines
echo "You have $(($lines-1)) objects in $1"
# we wrote it like this because we want to subtract 1
# but &lines-1 will print exactly "15-1" for example, it won't display the result
# so we have to write it like this: $(())
# if you run this script without the argument, it will take the current directory as the argument (by default)
# but what if we don't want that?

COMMENT
#__________________________________________________________________________________
# an enhanced example:

lines=$(ls -l $1 | wc -l)

if [ $# -ne 1 ];
  # the sign "#" indicates the number of the arguments passed to the script
  # so here we're saying that if the user doesn't pass EXACTLY 1 argument, the script will exit
then
  echo "This script requires exactly one directory path passed to it."
  echo "You passed in $# arguments."
  echo "Please try again."
  exit 1
fi
# throwing an exit code other than 0 indicating that was an error
# otherwise the script will continue to execute

echo "You have $(($lines-1)) objects in $1"
