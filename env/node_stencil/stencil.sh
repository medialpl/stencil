#!/bin/bash

if [ "${STENCIL}" ]; then
 if [ "${STENCIL}" = "install" ]; then
  npm install && stencil init --url "${STORE_URL}" --token "${API_TOKEN}" --apiHost "https://api.bigcommerce.com" --port 3000
 elif [ "${STENCIL}" = "init" ]; then
  stencil init --url "${STORE_URL}" --token "${API_TOKEN}" --apiHost "https://api.bigcommerce.com" --port 3000
 else
  COMMAND=(${STENCIL})
	stencil "${COMMAND[@]}"
 fi
else
  echo "No Stencil command was provided."
fi