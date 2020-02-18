#!/bin/bash

PORTS="8888 8765 8761"

for PORT in ${PORTS}
do
  echo "Killing server: ${PORT}"
  kill -9 $(lsof -ti tcp:${PORT})
done
