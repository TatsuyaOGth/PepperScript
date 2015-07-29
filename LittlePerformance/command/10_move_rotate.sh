#!/bin/sh
cd `dirname $0`
source common.sh

# host, moveX, moveY, rotate, delay

for ((i = 0; i < ${SIZE}; ++i))
do
  CMD=${COMMAND}\ ${SRC_DIR}moveTo.py\ ${HOSTS[$i]}\ ${PORTS[$i]}\ '0'\ '0'\ '360'\ '0.0'
  if test ${i} -eq ${LAST}
  then
    ${CMD}
  else
    ${CMD} &
  fi
done