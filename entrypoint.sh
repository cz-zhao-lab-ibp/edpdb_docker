#!/bin/bash

# Environment variables for EdPDB
declare -x EDPDBIN=/edpdb
declare -x EDP_DATA=$EDPDBIN/data

echo "EDPDB environment ready."

cd /edpdb_wd
export PS1="\W \$"

bash

exit
