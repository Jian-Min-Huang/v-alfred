#!/bin/bash

# option = tw2s or s2tw

option=tw2s
FileName=Tmp_$(date +"%Y%m%d%H%M%S").txt

if [[ $1 == '' ]]; then
  pbpaste > /tmp/$FileName
else
  echo -n $1 > /tmp/$FileName
fi

/usr/local/bin/opencc -i /tmp/$FileName -o /tmp/$FileName.output -c $option

cat /tmp/$FileName.output

rm -f /tmp/$FileName
rm -f /tmp/$FileName.output