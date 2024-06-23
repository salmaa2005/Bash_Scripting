#!/bin/bash
#exit codes check if the command was executed successfully
#any exit code other than 0 is a failure
package=htop
sudo apt install -y $package
echo "The exit code for $package installation is: $?"

# ? is a variable that is set to the exit status of the last command executed
# if it is 0 then the command was executed successfully
# it's declared automatically whenever u type a command
# __________________________________________________________________________________

package=htop
sudo apt install -y $package >>package-install.log
# >> redirects the output to a file not the terminal
# you can name the file whatever you want

if [ $? -eq 0 ]; then
	echo "The package $package was installed successfully"
	echo "The new command is available here: "
	which $package #prints the path of the command
else
	echo "The installation of $package failed"
fi
exit 199 # forces the exit status to be 199 no matter what
# after the exit statement nothing else will be executed
# (like the return statement in C)
# you can just exit without any code but it's not recommended
# _________________________________________________________________________________
# when you write any bash script try to simulate an error and see how it behaves
# use the exit code at the right timing because after any successsful script it'll
# automatically store the exit code of the last command and this command may not
# be what you intended
