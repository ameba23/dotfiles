#!/bin/bash

echo $@
echo $1
if [ -d $1 ]; then
  echo yes
fi
