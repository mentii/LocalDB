#!/bin/bash

aws dynamodb describe-table --table-name users --endpoint-url http://localhost:8000
