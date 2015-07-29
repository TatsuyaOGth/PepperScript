#!/bin/sh

cd `dirname $0`
source common.sh

echo "head banging"

for ((i = 0; i < ${SIZE}; ++i))
do
  CMD=${COMMAND}\ ${SRC_DIR}head_move.py\ ${HOSTS[$i]}\ ${PORTS[$i]}\ '0.9'
  if test ${i} -eq ${LAST}
  then
    ${CMD}
  else
    ${CMD} &
  fi
done

exit 0	
