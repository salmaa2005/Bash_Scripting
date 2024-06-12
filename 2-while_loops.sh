#!/bin/bash
var=1
while [ $var -le 10 ]; do
	echo $var
	var=$(expr $var + 1) #increments and the same as var=$((var+1))
	sleep 1              #sleeps for 1 second before the next iteration
done
# ___________________________________________________________________________

while [ -f ~/test ]; do
	echo "As of $(date), the file exists"
done

echo "As of $(date), the file has gone missing"
# this loop will run infinitely until the file is deleted
