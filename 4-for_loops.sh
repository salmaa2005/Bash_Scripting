#!/bin/bash

for i in 1 2 3 4 5 6 7 8 9 10; do
	echo $i
	sleep 1
done

echo "done"

#_______________________________________________________________________________

#we can do the same by writing the smallest and the greatest numbers like this:

for i in {1..10}; do
	echo $i
	sleep 1
done

#_______________________________________________________________________________

#another useful example is:

for file in logfiles/*.log; do #for each file in the logfiles directory that ends with .log
	tar -csvf $file.tar.gz $file
	#we'll create a compressed tarball of any .log file
	#the for loop uses the $file variable to iterate over each file
	#so the $file will actually be replaced with the name of the file in each iteration
done
