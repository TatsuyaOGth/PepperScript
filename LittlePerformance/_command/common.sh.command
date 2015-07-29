#!/bin/sh

cd `dirname $0`

# HOSTS=('192.168.100.104' '192.168.100.100')
HOSTS=('127.0.0.1')
# PORTS=('9559')
PORTS=('53301')

SRC_DIR='../module/'
COMMAND='/usr/bin/python'

SIZE=${#HOSTS[@]}
LAST=`expr $SIZE - 1`
