#!/usr/bin/env python

from __future__ import print_function # Python 2/3 compatibility
import boto3
import socket
import time
import sys
import botocore

def check_server(address, port):
  # Create a TCP socket
  s = socket.socket()
  try:
    s.connect((address, port))
    return True
  except socket.error, e:
    return False

dynamodb = boto3.resource('dynamodb', region_name='us-west-2', endpoint_url='http://localhost:8000')

print('Creating users table..')

# Wait until port is listening
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

while(not check_server('localhost',8000)):
  print('DB is not up')
  time.sleep(2)

print('DB is up')

# Add table
try:
  usersTable = dynamodb.create_table(
    TableName='users',
    KeySchema=[
        {
            'AttributeName': 'email',
            'KeyType': 'HASH'  #Partition key
        }
    ],
    AttributeDefinitions=[
        {
            'AttributeName': 'email',
            'AttributeType': 'S'
        }
    ],
    ProvisionedThroughput={
        'ReadCapacityUnits': 1,
        'WriteCapacityUnits': 1
    }
  )
  if (usersTable.wait_until_exists()):
    print('Failed to create users table', file=sys.stderr)
    sys.exit(1)
  else:
    print('Users table created.')
except botocore.exceptions.ClientError:
  print('Table exists already')
