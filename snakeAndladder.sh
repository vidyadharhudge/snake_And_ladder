#!/bin/bash -x 
echo "welcome to Snake and ladder game"

#CONSTANT
START_POISTION=0
END_POISTION=100

#VARIBALE
current_Poistion=0

echo "player rolls the die and get the numbers"
diceRoll=$((RANDOM%6 +1))

option=$((RANDOM%3 +1))
case $option in

1)
     echo "no play"
     current_Poistion=$current_Poistion
     ;;

2)
     echo "ladder"
     current_Poistion=$((current_Poistion+diceRoll))
     ;;

3)
     echo "snake"
     if [[ $diceRoll -gt $current_Poistion ]]
     then
     current_Poistion=$current_Poistion
     else
     current_Poistion=$current_Poistion-diceRoll
     fi
     ;;

esac

