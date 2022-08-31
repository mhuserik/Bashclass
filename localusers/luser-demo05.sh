#!/bin/bash
# This script is going to generate a list of random passwords
PASSWORD="${RANDOM}"
echo "${PASSWORD}"

#Three random numbers together

PASSWORD="${RANDOM}""${RANDOM}""${RANDOM}"
echo "${PASSWORD}"

PASSWORD=$(date +%s)
echo ${PASSWORD}

PASSWORD=$(date +%s%N)
echo ${PASSWORD}


#PASSWORD=$(date +%s%N | sha356sum | head -c32)
#echo ${PASSWORD}

CHARACTER=""
