#!/bin/sh

cd `dirname $0`
source common.sh


echo "good night"


for ((i = 0; i < ${SIZE}; ++i))
do
  CMD=${COMMAND}\ ${SRC_DIR}sleep.py\ ${HOSTS[$i]}\ ${PORTS[$i]}
  if test ${i} -eq ${LAST}
  then
    ${CMD}
  else
    ${CMD} &
  fi
done

exit 0	
