#!/bin/bash

#Display the UID and the username of the user executing this script
#Display if the user is the root user or not.

# Display the UID
#this is a special variable included when using bash. like top
echo "Your UID is ${UID}"


# Display the username could use whoami
USER_NAME=$(id -un)
#USER_NAME=`id -un`     |  This is an older syntax
echo "Your username is ${USER_NAME}"

# Display if the user is the root user or not
if [[ "${UID}" -eq 0 ]]
then
  echo 'You are root.'
else
  echo 'You are not a root user. Shame...'
fi
