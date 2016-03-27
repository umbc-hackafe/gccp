#!/bin/bash

# $1 - Data to write
# $2 - File to write to

# No arguments given
if [ $# -eq 0 ]
  then
    # Print usage message
    echo "usage: ./quick.sh <data> <file>"
fi

# Hard write data to file
echo $1 > $2
# Add file that was written
git add $2
# Commit with user name and datetime as message
git commit -m "`whoami && date`"
# Push changes
git push
