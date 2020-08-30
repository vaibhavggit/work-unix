#!/usr/bin/env bash
#File: guessinggame.sh

echo " Guess the number of file in this directory "
read guess

function try {
	echo "Please! Try again"
	read guess
}

tdir=$(ls -p | grep -v / | wc -l)


while [[ $guess != $tdir ]]
    do

        if [[ $guess -gt $tdir ]]
            then 
                echo " Your guessed number is too High "
        else 
            echo " Your guessed number is too Low"
        fi    
    try
done

echo "You guessed it correctly congo!!"

