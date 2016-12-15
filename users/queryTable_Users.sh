#!/bin/bash

aws dynamodb query --table-name users --key-condition-expression "email = :email" --expression-attribute-values file://item2.json --endpoint-url http://localhost:8000
