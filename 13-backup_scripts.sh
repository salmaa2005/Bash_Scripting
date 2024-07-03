#!/bin/bash

# we're checking if the user has entered 2 arguments
if [ $# -ne 2 ]; then
	echo "Usage: backup.sh <source_directory> <target_directory>"
	echo "Please try again."
	exit 1
fi

# Check if rsync is installed
if ! command -v rsync &>/dev/null; then # command -v checks if the command exists in the system's PATH and returns the path if it does
	# if it doesn't exist, it returns an empty string (nothing)
	# &> redirects both the standard output and error to /dev/null
	echo "rsync could not be found"
	echo "Please use your package manager to install it and try again."
	exit 2
	# it's a good practice to exit the script with different exit codes to indicate different errors
fi

# capture the current date, and store it in the format YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

rsync_options="-avb --backup-dir $2/$current_date --delete --dry-run"
# -a: is archive mode, it retains all the metadata like permissions, owner, etc.
# -v: verbose, shows what's going on in output as the rsync command is running

# -b: backup, after creating the backup, if a file is modified in the source directory, it will be copied to the backup directory
# it won't be overwritten or replaced, instead, it will be saved as a backup

# --backup-dir: backup directory
# it's used with the -b option to create a backup of the files in the target directory
# instead of creating a backup file if the file will be replaced in the same location, copy the backup file somewhere else

# $2 is the second argument (the target directory), but we want to store the backup in a subdirectory with the name of the current date
# so it's written $2/$current_date (kda hnla2y directory esmo backup masalan gowah backup directory bkol taree5)

# --delete: delete files in the target directory that are not in the source directory
# this makes the target directory an exact mirror of the source directory

# --dry-run: This option makes rsync perform a trial run without making any actual changes.
# It is useful for testing what the command will do without actually performing the file transfers or deletions.
# when we're confident that the script does what it should, we can remove the --dry-run option

$(which rsync) $rsync_options $1 $2/current >>backup_$current_date.log
# using >> instead of > to append the log file not to overwrite it

# $(which rsync): is a subshell that's running the command "which rsync" in the background
# we're doing this because it differs according to the distro so we'll get the fully qualified path of the command
# on this specific distro first then we'll give it the options through the variable $rsync_options
# then we'll pass the source directory and the target directory as arguments
# then we'll redirect the output of the command to a log file
# whenever this script is run, it will create a new log file using the current date variable
# (in fact, creating a backup on the same server is not considered a backup, this is just for demonstration purposes)
#
