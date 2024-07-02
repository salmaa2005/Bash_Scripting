#!/bin/bash
# at: is a command that's useful when we want to run a command or a script at a later time.
# we have to install it first using: sudo apt install at

logfile=job_results.log

echo "The script is running at $(date)" >$logfile

# in the terminal you'll write the at command:
# For example: at 15:32 -f /usr/local/bin/my_script.sh
# this command will run the file my_script.sh at 15:32
# we can also specify the date like this: at 15:32 081624 /usr/local/bin/my_script.sh
# this command will run the file my_script.sh at 15:32 on 08/16/2024
# atq: shows the jobs in queue
# the first number is the job number (we can use it to cancel the job)
# atrm: removes the job from the queue (it's given the job number)
# For example: atrm 3 (this removes job 3 from the queue)
#______________________________________________________________________________________________
# the crontab method:
# first you'll write the command: crontab -e
# -e is the edit option
# then you'll choose the editor you wanna use to edit the crontab file
# which will be opened in the tmp directory by default
# when you type the command this means that you're editing the crontab of the current user
# cronjobs have a specific format: minutes hours day_of_month month day_of_week COMMAND
# each field is separated by a space
# for example: 30 1 * * 5 /usr/local/bin/my_script.sh
# in this example we're running a script every Friday at 1:30 am
# the asterisk means that this field doesn't matter
# the command is the script that we want to run
# Each day of the week is represented by a number
# 0 is Sunday
# 1 is Monday
# 2 is Tuesday
# 3 is Wednesday
# 4 is Thursday
# 5 is Friday
# 6 is Saturday
# 7 is Sunday too!
#
# you can edit the crontab of another user using: sudo crontab -u username -e
#______________________________________________________________________________________________
