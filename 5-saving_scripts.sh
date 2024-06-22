# running your script in the home directory isn't the best solution for many reasons
# one of them is that you may have a coworker that wants to run these scripts when you're on vacation
# in this case, he won't have access to your home directory, so he can't run the script
# in that case, you can use the -i flag to run the script in the current working directory
# there are so many other reasons
# so we have t find a centralized location which isn't open to whoever
# but at the same time gives access to selected administrators

# FHS: Filesystem Hierarchy Standard
# it's a standard that specifies the directory structure of the filesystem
# the link: https://wiki.linuxfoundation.org/lsb/fhs
# we have the "user local" directory which is in the home directory
# it's used for locally installed programs that system administrators use
# sepecifically the "bin" directory which is in the user local directory
# depending on the distro you're using, when you execute commands it'll probably look in that directory anyway
# and we'll change the script's permission to alow system administrators to execute it not only the user
# we'll use the chown command to change the permissions

# file extensions can matter only on some OSs like windows
# but in linux they don't matter at all (they're more for the user not the system)
# because it makes the file more readable with highlighting keywords of each specific language according to the file extension
# we only need to specify which interpreter to be used using the shebang

# once you've put the script in the bin directory, you can execute it with the name of the script ONLY
# without needing to write the full path
# this happens becuse the $PATH variable exists
# This variable stores all the directories that contain all the scripts or binary that the system can run
# and usr/local/bin is one of them
# so you can execute the script with the name of the script
# but you can also execute it with the full path
# env command: lists all the environment variables so you can either run it or echo $PATH
# to see the contents of the $PATH variable

# This is how you add a directory to the $PATH variable:
# export PATH=$PATH:/path/to/directory
