#!/bin/bash -x
echo "welcome to Snake and ladder game"
dicePlayerOne=0
dicePlayerTwo=0 
function twoPlayer()
{ 

   START_POISTION=0
   END_POISTION=100
   current_Poistion=0
   no_Of_die=0
   while [[ $current_Poistion -lt $END_POISTION ]]
   do
      diceRoll=$((RANDOM%6 +1))
      option=$((RANDOM%3 +1))
   	noPlay=1
	   ladder=2
	   snake=3
      case $option in

      $noPlay)
              current_Poistion=$current_Poistion

              ;;

      $ladder)
              Current_Poistion=$((current_Poistion+diceRoll))
              ((no_Of_die++))
              if [[ $Current_Poistion -gt $END_POISTION ]]
              then
                    current_Poistion=$current_Poistion
              else
                    current_Poistion=$Current_Poistion
              fi 
 
              ;;

      $snake)
             Current_Poistion=$((current_Poistion-diceRoll))
            if [[ $Current_Poistion -lt $START_POISTION ]]
            then
                 current_Poistion=$current_Poistion
            else
                 current_Poistion=$Current_Poistion
            fi

            ;;

       esac

   done
   echo $no_Of_die
}

playerOne="$( twoPlayer $(()) )"
playerTwo="$( twoPlayer $(()) )"
echo "playerone=$playerOne"
echo "playertwo=$playerTwo"
if [[ $playerOne -lt $playerTwo ]]
then
     echo "playerOne is win"
else
     echo "playerTwo is win"
fi
