#!/bin/bash

echo "Initializing tables in the db once available..."
./users/createTable.py
./classes/createTable.py
