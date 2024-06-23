#!/bin/bash

echo "What's your favorite Linux distro?"

echo "1. Arch"
echo "2. CentOS"
echo "3. Debian"
echo "4. Mint"
echo "5. Ubuntu"
echo "6. Other..."

read distro

case $distro in
1)
	echo "Arch is a rolling release"

	;;
# 2 semicolons must be put for the statement to run (even if on a separate line)
2) echo "CentOS is popular on servers" ;;
3) echo "Debian is a community distro" ;;
4) echo "Mint is popular on laptops and desktops" ;;
5) echo "Ubuntu is popular on both servers and computers" ;;
6) echo "There are many distros out there!" ;;
*) echo "I don't know that distro!" ;;
	# the last option is the only one that does not need semicolons
esac #dy kelmet "case" met42lba

# ___________________________________________________________________________________________________________

flag=0

while [ $flag -eq 0 ]; do
	echo "What's your favorite Linux distro?"
	echo "1. Arch"
	echo "2. CentOS"
	echo "3. Debian"
	echo "4. Mint"
	echo "5. Ubuntu"
	echo "6. Other..."
	echo "7. Quit"
	read distro
	case $distro in
	1) echo "Arch is a rolling release" ;;
	2) echo "CentOS is popular on servers" ;;
	3) echo "Debian is a community distro" ;;
	4) echo "Mint is popular on laptops and desktops" ;;
	5) echo "Ubuntu is popular on both servers and computers" ;;
	6) echo "There are many distros out there!" ;;
	7) flag=1 ;;
	*) echo "I don't know that distro!" ;;
	esac
done

echo "Thanks for playing with my script!"
