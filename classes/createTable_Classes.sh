#!/bin/bash

aws dynamodb create-table --table-name classes --attribute-definitions AttributeName=code,AttributeType=S --key-schema AttributeName=code,KeyType=HASH --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1 --endpoint-url http://localhost:8000
