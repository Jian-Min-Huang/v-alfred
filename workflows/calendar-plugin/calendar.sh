#!/bin/bash

month_arr=('1' '2' '3' '4' '5' '6' '7' '8' '9' '10' '11' '12')

if [[ $1 == '' ]]; then
  cal -h
elif [[ ${month_arr[@]} =~ $1 ]]; then
  cal -h -m $1
elif [[ ! ${month_arr[@]} =~ $1 ]]; then
  echo -n "$1 is neither a month number (1..12) nor a name"
else
  cal -h $1
fi
