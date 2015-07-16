#!/bin/sh

source common.sh

SRC=$1

for ((i = 0; i < ${SIZE}; ++i))
do
  CMD=${COMMAND} ${SRC_DIR}${SRC} ${HOSTS[$i]}
  if test ${i} -eq ${LAST}
  then
    ${CMD}
  else
    ${CMD} &
  fi
done
