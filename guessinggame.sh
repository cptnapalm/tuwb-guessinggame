#!/usr/bin/env bash
# File: guessinggame.sh

nfiles=$(ls | wc -l)
correct=0

function check_ans {
    if [[ $answer =~ [A-Za-z] ]]
    then
        echo "That is not a number."
    elif [[ $answer -eq $nfiles ]]
    then
        correct=1
    else
        echo -n "Incorrect answer."
        if [[ $answer -gt $correct ]]
        then
            echo "  Too high."
        else
            echo "  Too low."
        fi
    fi
}

while [[ $correct -eq 0 ]]
do
    echo "How many files are in the current directory?"
    read answer
    check_ans $answer
done

echo "Congratulations on correctly guessing the number of files!"
