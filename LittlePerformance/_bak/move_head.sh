#!/bin/sh

source common.sh

for ((i = 0; i < ${SIZE}; ++i))
do
  if test ${i} -eq ${LAST}
  then
    ${COMMAND} ${SRC_DIR}move_head.py ${HOSTS[$i]}
  else
    ${COMMAND} ${SRC_DIR}move_head.py ${HOSTS[$i]} &
  fi
done

