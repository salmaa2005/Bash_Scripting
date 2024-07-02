#!/bin/bash
: <<COMMENT
	# Parameter expansion is a feature in Bash that allows you to manipulate variables in various ways.
	# It provides a mechanism to retrieve the value of variables, modify them, or apply conditional logic directly in the shell.

	# Basic expansion:
	name="John"
	echo "Hello, ${name}!"
	# ______________________________________________________________________________________________________________________________

	# Default values:
	# '+' : If parameter is set, word is substituted, Otherwise, no substitution is performed.
	echo "Hello, ${name:+saloma}!"
	echo "Hello, ${name1:+saloma}!"
	# here "saloma" isn't printed because name1 is not set

	echo""
	sleep 2

	name2=""
	name3="John"
	# '-' : If parameter is unset or null, word is substituted. Otherwise, the value of parameter is used
	echo "Hello, ${name2:-saloma}!"
	# here "saloma" is printed because name2 is not set
	echo "Hello, ${name3:-saloma}!"
	# here "John" is printed because name3 is set
	echo "Hello, $name2"
	# here no value is printed because name2 is not set and '-' changes the value temporarily

	echo""
	sleep 2

	name4=""
	name5="John"
	# '=' : If parameter is unset or null, it is set to word
	# ya3ny eletnen by4t8lo lw el variable unset, bs el '-' ht8yr el value temporarily without altering the original value
	# ama el '=' lw el variable unset ht8yaro permanently, hyb2a qymto kda
	echo "Hello, ${name4:=saloma}!"
	# here "saloma" is printed because name4 is not set
	echo "Hello, ${name5:=saloma}!"
	# here "John" is printed because name5 is set
	echo "Hello, $name4"
# here "saloma" is printed because name4 is set permanently using '='
# ______________________________________________________________________________________________________________________________
COMMENT

name="John"
echo ${#name}
# this prints the length of the string

echo""

##### Substring Extraction: #####
string="Hello, World!"
echo ${string:7:5}
# this prints "World"
sub=${string:0:5}
echo ${sub}
# this prints "Hello"

echo""

##### Replace the first match: #####
echo ${string/World/Soso}
# this prints "Hello, Soso!"

echo""

##### Replace all matches: #####
string2="I am Salma, My name is Salma"
echo ${string2//Salma/Soso}
# this prints "I am Soso, My name is Soso"

echo""

##### Remove Pattern (prefix): #####
echo ${string/#Hello, d;lv/}
# this prints "World!"
