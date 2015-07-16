#!/bin/sh

cd `dirname $0`

HOSTS=('192.168.100.104' '192.168.100.100')
SRC_DIR='../module/'
COMMAND='/usr/bin/python'

SIZE=${#HOSTS[@]}
LAST=`expr $SIZE - 1`
