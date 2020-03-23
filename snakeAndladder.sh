#!/bin/bash 
echo "welcome to Snake and ladder game"

#CONSTANT
START_POISTION=0
END_POISTION=100

#VARIBALE
current_Poistion=0

echo "player rolls the die and get the numbers"
while [[ $current_Poistion -lt $END_POISTION ]]
do
diceRoll=$((RANDOM%6 +1))
option=$((RANDOM%3 +1))

   case $option in

   1)
       echo "no play"
       current_Poistion=$current_Poistion
       ;;

   2)
       echo "ladder"
       Current_Poistion=$((current_Poistion+diceRoll))
       if [[ $Current_Poistion -gt $END_POISTION ]]
       then
            current_Poistion=$current_Poistion
       else
            current_Poistion=$Current_Poistion
       fi 
        echo "ladder is:$current_Poistion"
       ;;

   3)
       echo "snake"
       Current_Poistion=$((current_Poistion-diceRoll))
       if [[ $Current_Poistion -lt $START_POISTION ]]
       then
       current_Poistion=$current_Poistion
       else
       current_Poistion=$Current_Poistion
       fi
           echo "snake is:$current_Poistion"
       ;;

   esac
done
