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

#____________________________________________________________________________

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

if grep -q "Arch" $release_file; then
  sudo pacman -Syu 1>>$logfile 2>>$errorlog
  if [ $? -ne 0 ]; then
    echo "Error: update failed, please check $errorlog file"
  fi
fi

if grep -q "Mint" $release_file; then
  sudo apt update 1>>$logfile 2>>$errorlog
  sudo apt dist-upgrade -y 1>>&logfile 2>>$errorlog
  # here we added -y because we won't be seeing any output as it's redirected
  # so we won't even know if it asks for any permission
  if [ $? -ne 0 ]; then
    echo "Error: update failed, please check $errorlog file"
  fi
fi

# we can use the command "tail -f" to view the logs in almost real time
# tail -f /var/log/updater.log
# tail -f /var/log/updater_errors.log
