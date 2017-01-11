#!/bin/bash

if ! ./describeTable_Classes.sh &> /dev/null; then
  success="False"
fi

while [ $success == 'False' ]; do
  if ! ./describeTable_Classes.sh &> /dev/null; then
    if ./createTable_Classes.sh &> /dev/null; then
      success="True"
    fi
    else
      sucess="True"
  fi
  sleep 1
done
