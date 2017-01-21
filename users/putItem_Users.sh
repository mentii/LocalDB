#!/bin/bash

aws dynamodb put-item --table-name users --item file://item3.json --return-consumed-capacity TOTAL --endpoint-url http://localhost:8000
