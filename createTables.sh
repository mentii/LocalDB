#!/bin/bash

source ./env/bin/activate
pip install -r requirements.txt

echo "Initializing tables in the db once available..."
./users/createTable.py
./classes/createTable.py
