#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command

myString="Teststring"
#referenceString="password"
#echo "give your password guess"
#read password
#[ $myString = $password ] && echo "You guessed the password!" || echo "The password eludes you..."
for i in {1,2,3}
do
  echo "give your password :"
  read password
  if [[ "$myString" = "$password" ]]; then
    echo "You guessed the password!"
    break
  fi
echo "The password eludes you..."
echo "you have $((3 - $i)) attempts left"
done
