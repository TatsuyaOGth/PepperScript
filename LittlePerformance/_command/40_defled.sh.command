#!/bin/sh

source common.sh


for ((i = 0; i < ${SIZE}; ++i))
do
  if test ${i} -eq ${LAST}
  then
    ${COMMAND} ${SRC_DIR}defled.py ${HOSTS[$i]} ${PORTS[$i]} '1,1,0'
  else
    ${COMMAND} ${SRC_DIR}defled.py ${HOSTS[$i]} ${PORTS[$i]} '0,1,1' &
  fi
done

