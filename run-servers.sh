#!/bin/bash

# Starts all of the java projects inside of the folder  
# except from the ones passed as arguments

DIRECTORIES="cloud-config naming-server gateway-server"

for DIRECTORY in ${DIRECTORIES}
do
  echo "starting project: ${DIRECTORY} . . ."
  cd ${DIRECTORY} && ./run.sh 
  echo "Leaving directory: ${DIRECTORY}"
  cd ..
done

