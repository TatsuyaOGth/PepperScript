#!/bin/sh

cd `dirname $0`
source common.sh

echo "head banging"

for ((i = 0; i < ${SIZE}; ++i))
do
  CMD=${COMMAND}\ ${SRC_DIR}head_yawing.py\ ${HOSTS[$i]}\ ${PORTS[$i]}\ '0.4'\ '5' 
  if test ${i} -eq ${LAST}
  then
    ${CMD}
  else
    ${CMD} &
  fi
done

exit 0	
