#!/bin/bash

if [ "${S}" ]; then
  COMMAND=(${S})
	stencil "${COMMAND[@]}"
elif [ "${1}" = "init" ]; then
  npm i && stencil init
else
  echo "No Stencil command was provided."
fi
