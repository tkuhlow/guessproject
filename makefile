all: README.md

README.md:
	echo "## Coursera: The Unix Workbench project\n" > README.md
	echo "*by Johns Hopkins University*" >> README.md
	echo "**Task:** Create a program called *guessinggame.sh*. This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user will be informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they should be congratulated. >> README.md
	echo -n "\n**Date created:** " >> README:md
	date >> README.md
	echo -n "\n**Number of lines in guessinggame.sh:** " >> README.md
	wc -l < ./guessinggame.sh >> README.md
