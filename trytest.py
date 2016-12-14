#!/bin/python
import sys

try: 
  thing = sys.argv[1]
#  thing.center(70)
  print(thing.center(70))

except IndexError:
    print("usafffge: xxxx")

