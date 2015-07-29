#!/bin/sh

source common.sh

for ((i = 0; i < ${SIZE}; ++i))
do
  if test ${i} -eq ${LAST}
  then
    ${COMMAND} ${SRC_DIR}loop01.py ${HOSTS[$i]} ${PORTS[$i]}
  else
    ${COMMAND} ${SRC_DIR}loop01.py ${HOSTS[$i]} ${PORTS[$i]} &
  fi
done
sleep 0.5s

for ((i = 0; i < ${SIZE}; ++i))
do
  if test ${i} -eq ${LAST}
  then
    ${COMMAND} ${SRC_DIR}loop02.py ${HOSTS[$i]} ${PORTS[$i]}
  else
    ${COMMAND} ${SRC_DIR}loop02.py ${HOSTS[$i]} ${PORTS[$i]} &
  fi
done
sleep 0.5s

for ((i = 0; i < ${SIZE}; ++i))
do
  if test ${i} -eq ${LAST}
  then
    ${COMMAND} ${SRC_DIR}loop03.py ${HOSTS[$i]} ${PORTS[$i]}
  else
    ${COMMAND} ${SRC_DIR}loop03.py ${HOSTS[$i]} ${PORTS[$i]} &
  fi
done
sleep 0.5s

for ((i = 0; i < ${SIZE}; ++i))
do
  if test ${i} -eq ${LAST}
  then
    ${COMMAND} ${SRC_DIR}loop04.py ${HOSTS[$i]} ${PORTS[$i]}
  else
    ${COMMAND} ${SRC_DIR}loop04.py ${HOSTS[$i]} ${PORTS[$i]} &
  fi
done
sleep 0.5s

for ((i = 0; i < ${SIZE}; ++i))
do
  if test ${i} -eq ${LAST}
  then
    ${COMMAND} ${SRC_DIR}loop05.py ${HOSTS[$i]} ${PORTS[$i]}
  else
    ${COMMAND} ${SRC_DIR}loop05.py ${HOSTS[$i]} ${PORTS[$i]} &
  fi
done
sleep 0.5s


echo "stopped loop"

exit 0	
