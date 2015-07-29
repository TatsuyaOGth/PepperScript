#!/bin/sh

cd `dirname $0`

HOSTS=('192.168.100.105' '192.168.100.107')
# HOSTS=('192.168.3.18' '192.168.3.19' '192.168.3.21')
PORTS=('9559' '9559')
# PORTS=('9559' '9559' '9559')
# PORTS=('53301')

SRC_DIR='../module/'
COMMAND='/usr/bin/python'

SIZE=${#HOSTS[@]}
LAST=`expr $SIZE - 1`
