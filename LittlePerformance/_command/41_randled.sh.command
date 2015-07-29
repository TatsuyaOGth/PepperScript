#!/bin/sh

source common.sh


for ((i = 0; i < ${SIZE}; ++i))
do
  CMD=${COMMAND}\ ${SRC_DIR}led.py\ ${HOSTS[$i]}\ ${PORTS[$i]}
  if test ${i} -eq ${LAST}
  then
    ${CMD}
  else
    ${CMD} &
  fi
done