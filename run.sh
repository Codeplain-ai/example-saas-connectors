#!/bin/bash

# Check if a parameter is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <saas_label>"
  exit 1
fi

saas_label=$1

python clients/$saas_label/build/${saas_label}_client.py credentials/${saas_label}-credentials.json
