#!/usr/bin/env bash
#File: guessinggame.sh

echo " Guess the number of file in this directory "
read guess

function try {
	echo "Please! Try again"
	read guess
}

tdir=$(ls -p | grep -v / | wc -l)


while [ -v $comp] 
do
   if [[ $guess =~ ^[0-9]+$ ]]
   then
        if [[ $guess -gt $tdir ]]
            then 
                echo " Your guessed number is too High "
                try     
elif [[ $guess -lt $tdir ]]
            then
                echo " Your guessed number is too Low"
                try
        elif [[ $guess == $tdir ]]
            then 
                echo "You guessed it correctly congo!!"
                comp=true
        fi
     else 
        echo "Please enter a integer"
        try
    fi
done

