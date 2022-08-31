#!/bin/bash

#^^^ this is the shebang that tells the script what to run it in.

#This script displays various info to the screen.

#display text below/ echo is a shell built in. it makes it more portable for many users in any environment
echo 'Hello'


#Assign value to a variable
WORD='script'

#print the variable
echo "$WORD"

echo "This is a shell $WORD"

#case were you may need to add the brackets to the variable call.
echo "${WORD}ing is fun"

#new variable
ENDING='ed'

#combining variable
echo "This is ${WORD}${ENDING}"

#Variable reasignment
ENDING='ing'

#combining variable after reasignment
echo "This is ${WORD}${ENDING}"

#reasignment
ENDING='s'

echo "You are going to write many ${WORD}${ENDING} in this class."
