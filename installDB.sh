#!/bin/bash

wget http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz
mkdir ~/dynamoDB
mv dynamodb_local_latest.tar.gz ~/dynamoDB/
cd ~/dynamoDB/
tar -xvzf dynamodb_local_latest.tar.gz
rm dynamodb_local_latest.tar.gz
