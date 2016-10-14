#!/bin/bash
#
for f in *.epub; do
  ./mrename.sh -m creator "$f"
done
