#!/bin/bash

## Install if not installed yet
if [ ! -f ~/dynamoDB/DynamoDBLocal.jar ]
then
  ./installDB.sh
fi

isListening=`netstat -an | grep 8000 | grep LISTEN | awk -F " " '{print $NF}'`

if [ -z $isListening ]
then
  cd ~/dynamoDB
  java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb
fi
