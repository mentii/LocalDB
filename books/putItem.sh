#!/bin/bash

aws dynamodb put-item --table-name books --item file://item.json --return-consumed-capacity TOTAL --endpoint-url http://localhost:8000
