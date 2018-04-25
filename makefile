README.md:
	echo "# Guessing Game" > README.md
	echo "guessinggame.sh  " >> README.md
	echo -n "**Date**: " >> README.md
	date +%D >> README.md
	echo " " >> README.md
	echo -n "**Time**: " >> README.md
	date +%r >> README.md
	echo " " >> README.md
	echo -n "**Lines of Code**: " >> README.md
	cat guessinggame.sh | wc -l >> README.md
	echo " " >> README.md
	echo "\[Website\]\(https://cptnapalm.github.io/tuwb-guessinggame\)" >> README.md
