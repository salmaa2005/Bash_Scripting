# data streams allow us to control where the output goes, where errors are printed, and to get input from the user
# whenever we use a command and the results are printed to the screen [a normal result not an error], we've seen the STDOUT (ex: ls command)
# if an error is printed [even if it's printed, it's still an error so not STDOUT], we've seen STDERR

# "find" command:
#   it's given a search criteria
#   it prints both: STDOUT (results) and STDERR (errors)
#   ex: find /etc -type f (search for files in /etc)
#   this example will print all files in /etc and also print any errors (for example, permission issues with some files)
#   you can redirect the output/error to a file or to a variable
#   ex: find /etc -type f 2> errors.txt
#   ex: find /etc -type f 2> /dev/null
#     whatever is put inside dev/null will be ignored
#   ex: find /etc -type f > /dev/null
#     here only the STDOUT will be ignored and the STDERR will be printed
#     same as: find /etc -type f 1> /dev/null
#     because 1 is the default, so it's assumed automatically if not specified
#   ex: find /etc -type f &> results.txt
#     & means that both STDOUT and STDERR will be redirected to the same file
#   ex: find /etc -type f 1> results.txt 2> errors.txt
#     it will redirect STDOUT to results.txt and STDERR to errors.txt

# STDIN:

echo "Please enter your name:"
read name
echo "Hello $name"
