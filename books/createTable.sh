#!/bin/bash

aws dynamodb create-table --table-name books --attribute-definitions AttributeName=bookId,AttributeType=S --key-schema AttributeName=bookId,KeyType=HASH --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1 --endpoint-url http://localhost:8000
