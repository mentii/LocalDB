#!/bin/bash

aws dynamodb scan --table-name classes --endpoint-url http://localhost:8000
