#!/bin/sh

cd `dirname $0`
source common.sh

echo "set pose"

for ((i = 0; i < ${SIZE}; ++i))
do
  CMD=${COMMAND}\ ${SRC_DIR}default_pose.py\ ${HOSTS[$i]}\ ${PORTS[$i]}\ '0.8'
  if test ${i} -eq ${LAST}
  then
    ${CMD}
  else
    ${CMD} &
  fi
done

exit 0	
