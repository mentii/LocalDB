#!/bin/bash

aws dynamodb scan --table-name users --endpoint-url http://localhost:8000
