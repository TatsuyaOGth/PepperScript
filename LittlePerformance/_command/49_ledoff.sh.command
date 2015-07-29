#!/bin/sh
cd `dirname $0`
source common.sh

for ((i = 0; i < ${SIZE}; ++i))
do
  CMD=${COMMAND}\ ${SRC_DIR}ledoff.py\ ${HOSTS[$i]}\ ${PORTS[$i]}
  if test ${i} -eq ${LAST}
  then
    ${CMD}
  else
    ${CMD} &
  fi
done
