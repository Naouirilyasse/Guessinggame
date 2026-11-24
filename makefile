all: README.md
README.md:guessinggame.sh
	echo "# guessing game" > README.md
	echo "" >>README.md
	echo "Execute le : $$(date)" >> README.md
	echo "" >> README.md
	echo "nombre de lignes de code guessinggame.sh : $$(wc -l < guessinggame.sh)" >> README.md


