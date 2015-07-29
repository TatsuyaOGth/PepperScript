#!/bin/sh

cd `dirname $0`

DST_DIR="../_command"

for file in `find . -name "*.sh"`; do
  cp $file ${DST_DIR}/$file.command
  chmod u+x ${DST_DIR}/$file.command
done

cp ./common.sh ${DST_DIR}/


# cp $1 $1.command
# chmod u+x $1.command

