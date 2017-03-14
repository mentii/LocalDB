#!/usr/bin/env python

from __future__ import print_function # Python 2/3 compatibility
import boto3
import socket
import time
import sys
import botocore

dynamodb = boto3.resource('dynamodb', region_name='us-west-2', endpoint_url='http://localhost:8000')

print('Creating books table..')

# Wait until port is listening
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

while(sock.connect_ex(('localhost',8000))):
  print('DB is not up')
  time.sleep(1)

print('DB is up')

# Add table
try:
  usersTable = dynamodb.create_table(
    TableName='books',
    KeySchema=[
        {
            'AttributeName': 'bookId',
            'KeyType': 'HASH'  #Partition key
        }
    ],
    AttributeDefinitions=[
        {
            'AttributeName': 'id',
            'AttributeType': 'S'
        }
    ],
    ProvisionedThroughput={
        'ReadCapacityUnits': 1,
        'WriteCapacityUnits': 1
    }
  )
  if (usersTable.wait_until_exists()):
    print('Failed to create books table', file=sys.stderr)
    sys.exit(1)
  else:
    print('Classes books created.')
except botocore.exceptions.ClientError:
  print('Books Table exists already')
