#!/bin/sh
cd `dirname $0`
source common.sh

python ${SCRIPT_DIR}ledoff.py $HOST01 & \
python ${SCRIPT_DIR}ledoff.py $HOST02 & \
python ${SCRIPT_DIR}ledoff.py $HOST03 & \
python ${SCRIPT_DIR}ledoff.py $HOST04 & \
python ${SCRIPT_DIR}ledoff.py $HOST05

python ${SCRIPT_DIR}sleep.py $HOST01 & \
python ${SCRIPT_DIR}sleep.py $HOST02 & \
python ${SCRIPT_DIR}sleep.py $HOST03 & \
python ${SCRIPT_DIR}sleep.py $HOST04 & \
python ${SCRIPT_DIR}sleep.py $HOST05


