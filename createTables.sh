#!/bin/bash

echo "Populating DB once it is available..."
cd users
./initTable_Users.sh
#cd ../classes
#./initTable_Classes.sh
