# #!/bin/bash
# File: guessinggame.sh
# Project - The Unix Workbench - Coursera

number_sanitation=0

function right_guess {
	local files=$(pwd | ls -1 | wc -l | egrep -o "[0-9]+") 

	if [[ $input -eq $files ]]
    	then
	echo "Good job. $input is the right count of files!"
	echo ""
	number_sanitation=1
 	elif [[ $input -gt $files ]]
    	then
	echo "You entered $input. That's too high! Try again."
	echo ""
	else
	echo "You entered $input. That's too low! Try again."
	echo ""
    	fi
}

while [[ $number_sanitation -eq 0 ]]
do
    read -p "Please guess how many files are in the current directory? " input
	if [[ $(echo $input | egrep -o -E "[[:blank:]]*[^0-9]+[[:blank:]]*") ]]
	then
		echo "Please type in a number:"
		read input
	fi
	right_guess
echo ""
done

echo "---" && ls -1

