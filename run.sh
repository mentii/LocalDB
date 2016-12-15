#!/bin/bash  

isListening=`netstat -an | grep 8000 | grep LISTEN | awk -F " " '{print $NF}'`

if [ ! $isListening == 'LISTEN' ]
then
  cd ~/dynamoDB
  java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb
fi
