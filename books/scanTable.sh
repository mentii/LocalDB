#!/bin/bash

aws dynamodb scan --table-name books --endpoint-url http://localhost:8000
