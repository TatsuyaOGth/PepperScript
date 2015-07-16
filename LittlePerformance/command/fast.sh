#!/bin/sh


cd `dirname $0`
source common.sh

echo "fast random"

# for ((i = 0; i < ${SIZE}; ++i))
# do
#   ${COMMAND} ${SRC_DIR}insane_move_auto.py ${HOSTS[$i]} '1' &
# done

for ((i = 0; i < ${SIZE}; ++i))
do
  CMD=${COMMAND}\ ${SRC_DIR}insane_move_auto.py\ ${HOSTS[$i]}\ '1'
  if test ${i} -eq ${LAST}
  then
    ${CMD}
  else
    ${CMD} &
  fi
done

exit 0	
