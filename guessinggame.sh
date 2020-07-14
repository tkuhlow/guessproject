#!/usr/bin/env bash
# File: guessinggame.sh
# Project - The Unix Workbench - Coursera

files=$(pwd | ls -1 | wc -l)

function right_guess {
    if [[ $1 -lt $2 ]]
    then
	echo "You entered $input. That's too low! Try again."
   	echo ""
 elif [[ $1 -gt $2 ]]
    then
	echo "You entered $input. That's too high! Try again."
	echo ""
else
	echo "Whoop whoop. $input is the right count of files!"
	echo ""
    fi
}

while [[ $files -ne $input ]]
do
    read -p "Please guess how many files are in the current directory? " input
    echo $(right_guess $input $files)
echo ""
done
