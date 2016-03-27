#!/bin/bash

# $1 - Data to write
# $2 - File to write to

# No arguments given
if [ $# -eq 0 ]; then
    # Print usage message
    /usr/bin/echo "usage: ./quick.sh <data> <file>"
  else
    # Hard write data to file
    /usr/bin/echo $1 > $2
    # Add file that was written
    /usr/bin/git add --all
    # Commit with datetime as message
    /usr/bin/git commit -m "`/usr/bin/date`"
    # Push changes
    /usr/bin/git push
fi
