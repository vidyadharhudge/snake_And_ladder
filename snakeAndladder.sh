#!/bin/bash -x
echo "welcome to Snake and ladder game"

#CONSTANT
START_POISTION=0
END_POISTION=100

#VARIBALE
current_Poistion=0

echo "player rolls the die and get the numbers"
diesRoll=$((RANDOM%6 +1))
