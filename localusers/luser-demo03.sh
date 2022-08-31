#!/bin/bash

#Goal: display the UID and the username of the user executing the script and also dosplay if the user is the vagrant usr.

# Dosplay the UID
echo "Your UID is ${UID}"

#Only display the UID if the UID does not match 1000
UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
  echo "Your UID does not match {$UID_TO_TEST_FOR}. "
  exit 1
fi


#Display the username
USER_NAME=$(id -un)

#Test is the command succeeded  | ${?} holds the most recent exit code.
if [[ "${?}" -ne 0 ]]
then
  echo 'The id command did not execute successfully.'
  exit 1
fi
echo " Your username is ${USER_NAME}"

#Use a string to test the conditional statement.
USER_NAME_TO_TEST_FOR='vagrant'
if [[ "${USER_NAME}" = "${USER_NAME_TO_TEST_FOR}" ]]
then
  echo "Your username matches the ${USER_NAME_TO_TEST_FOR}. "
fi


#Test for != (not equal) for the string.
if [[ " ${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]]
then
  echo "Your username does not match ${USER_NAME_TO_TEST_FOR}. "
  exit 1
fi


exit 0
