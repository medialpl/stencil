#!/bin/bash

if [ "${STENCIL}" ]; then
 if [ "${STENCIL}" = "install" ]; then
  npm install && stencil init
 else
  COMMAND=(${STENCIL})
	stencil "${COMMAND[@]}"
 fi
else
  echo "No Stencil command was provided."
fi