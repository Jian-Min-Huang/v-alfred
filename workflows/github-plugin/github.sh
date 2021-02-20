#!/bin/bash

prefix="/Users/yFr/GitHub/"

# echo "pull result: "
cd $prefix
for d in */; do
  # echo "$prefix$d"
  cd "$prefix$d"
  # git pull > /dev/null
  # echo $?
  if [ "$?" -ne "0" ]; then
    echo "fail $prefix$d"
    break
  else
    # echo "success $prefix$d"
    echo "$prefix$d"
  fi
done