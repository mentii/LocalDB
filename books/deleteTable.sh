#!/bin/bash

aws dynamodb delete-table --table-name books --endpoint-url http://localhost:8000
