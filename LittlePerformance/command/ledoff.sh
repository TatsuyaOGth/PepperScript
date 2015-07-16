#!/bin/sh
cd `dirname $0`
source common.sh

${COMMAND} ${SCRIPT_DIR}ledoff.py $HOST01 & \
${COMMAND} ${SCRIPT_DIR}ledoff.py $HOST02 & \
${COMMAND} ${SCRIPT_DIR}ledoff.py $HOST03 & \
${COMMAND} ${SCRIPT_DIR}ledoff.py $HOST04 & \
${COMMAND} ${SCRIPT_DIR}ledoff.py $HOST05
