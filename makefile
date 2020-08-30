all: README.md
README.md:
	echo '# Assignment #' >> README.md
	echo '1. Time when this makefile was executed at: $(shell date) ' >> README.md
	echo "2. This file guessinggame.sh contains the following number of line:" >> README.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
