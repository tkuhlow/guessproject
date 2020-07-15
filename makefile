all: README.md

README.md: guessinggame.sh
	echo "## Coursera: The Unix Workbench project\n" > README.md
	echo "*by Johns Hopkins University*" >> README.md
	echo "\n**Task**: Create a program called *guessinggame.sh* to guess the count of files in the actual directory." >> README.md
	echo -n "\n**README.md created**: " >> README.md
	date >> README.md
	echo -n "\n**Number of lines in guessinggame.sh:** " >> README.md
	wc -l < ./guessinggame.sh >> README.md

clean:
	rm README.md
