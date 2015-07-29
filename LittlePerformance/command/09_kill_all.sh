#!/bin/sh

source common.sh
echo "kill_all"


for ((i = 0; i < ${SIZE}; ++i))
do
  CMD=${COMMAND}\ ${SRC_DIR}kill_all.py\ ${HOSTS[$i]}\ ${PORTS[$i]}
  if test ${i} -eq ${LAST}
  then
    ${CMD}
  else
    ${CMD} &
  fi
done

exit 0	
