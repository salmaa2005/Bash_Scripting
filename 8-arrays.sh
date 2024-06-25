#!/bin/bash

distros=('ubuntu' 'debian' 'fedora' 'rhel' 'Mint')
# here we declared an array with those elements
# There are no commas, just spaces

distros[5]='arch'
# this adds oe replaces an element in the array

unset distros[5]
# this removes an element from the array

distros[0]='suse'
# this adds an element to the array

echo "${distros[0]}"
# this prints the first element of the array

echo "${distros[@]}"
# this prints all the elements of the array

echo "${#distros[@]}"
# this prints the number of elements (length of the array)

echo "${!distros[@]}"
# this prints the indices of the array

distros[10]='centos'
# this adds an element that's not right after the last index
# but nulls are ignored in bash
# _________________________________________________________________________
# Variables are treated as arrays in bash
# bash assumes that the value of the variable is at the zeroth index

random="salokaa"

echo "${random[@]}"
echo "${random[0]}"
# both lines display the same output

echo "${#random[@]}"
# prints 1 which is the length of the array

echo "${random[1]}"
echo "${random[2]}"
# print nothing (blank lines)
