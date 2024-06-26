#!/bin/bash

# Associative arrays in Bash, also known as "hashes" or "dictionaries" in other programming languages
# allow you to store and retrieve values based on a key
# Unlike indexed arrays, which use numeric indices, associative arrays use string keysThis makes them more flexible and useful.
# This can be particularly useful for tasks that involve grouping data or performing lookups based on meaningful identifiers.

declare -A my_array
# this declares an associative array
# if we remove the -A an indexed array will be created

my_array["name"]="Saloma"
my_array["age"]=20
my_array["height"]="164 cm"
my_array["city"]="Cairo"
my_array["country"]="Egypt"
my_array["field of study"]="Software Engineering"

echo "Valuse: ${my_array[@]}"
# prints all the values (not the keys)
echo "Keys: ${!my_array[@]}"
# prints all the keys
echo "${#my_array[@]}"
# prints the number of elements

echo "${my_array[name]}"
# prints the value associated with the key
sleep 3
echo""

for key in "${!my_array[@]}"; do
	echo "my $key is ${my_array[$key]}"
	sleep 1
done
# this loops through the keys

if [[ -v my_array[soso] ]]; then # the -v option within the [[ ... ]] test construct is used to check if a variable or an array element is set. Specifically, it checks if a variable is set and not null
	# meaning it has been defined and optionally assigned a value.
	echo "Key exists"
else
	echo "Key does not exist"
fi

unset my_array[name]
# this removes the key and its value

echo "${my_array[@]}"
