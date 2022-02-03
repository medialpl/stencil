#!/bin/bash

if [ "${S}" ]; then
  COMMAND=(${S})
	stencil "${COMMAND[@]}"
else
	stencil start
fi
