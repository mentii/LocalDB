#!/bin/bash

aws dynamodb describe-table --table-name books --endpoint-url http://localhost:8000
