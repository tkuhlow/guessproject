# #!/bin/bash
# File: guessinggame.sh
# Project - The Unix Workbench - Coursera

function file_number {
	echo  $(ls -1A | wc -l | bc)
}

file_number=$(file_number)

while true
do
	read -p "Please guess how many files are in the current directory! " input

	if [[ ! $input =~ ^[0-9]+$ ]]
	then
		echo "Please type in a number!"
		echo ""
		continue
	else
		if [[ $input -lt $file_number ]]
		then
		echo "You entered $input. That's too low! Try again."
		echo ""
		elif [[ $input -gt $file_number ]]
		then
		echo "You entered $input. That's too high! Try again."
		echo ""
		else
		echo "Good job. $input is the right count of files!"
		echo ""
		break
		fi
	fi
done

echo "---" && ls -1A
echo ""
