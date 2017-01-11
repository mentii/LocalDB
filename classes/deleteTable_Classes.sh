#!/bin/bash

aws dynamodb delete-table --table-name classes --endpoint-url http://localhost:8000
