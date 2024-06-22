#!/bin/bash
if [ -d /etc/pacman.d ]; then
	sudo pacman -Syu
	#if the host is based on arch, run the pacman update command
else
	#if the host is based on debian or ubuntu, run the apt update and upgrade commands
	sudo apt update
	sudo apt dist-upgrade
fi
#__________________________________________________________________________

#another way to check if the host is based on arch or ubuntu
release_file=/etc/os-release
#this file is present in almost all linux distros
#it contains the name of the distro and other relevant info

if grep -q "Arch" $release_file; then #the grep command searches for a string in a file
	# -q means quiet mode, meaning no output
	# we're not usng [] in the if statement because we're not using the test command
	# we can use other linux commands as criteria to be checked
	#the host is based on arch
	sudo pacman -Syu
fi

if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file; then
	#the host is based on debian or ubuntu
	sudo apt update
	sudo apt dist-upgrade
fi

if grep -q "Mint" $release_file; then
	#the host is based on debian or ubuntu (Mint)
	sudo apt update
	sudo apt dist-upgrade
fi

#the prblem here is that we have to search for each distro name specifically in the release file
