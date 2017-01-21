#!/bin/bash

echo "Initializing tables in the db once available..."
cd users
./createTable_Users.py
cd ../classes
./createTable_Classes.py
