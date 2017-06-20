#!/usr/bin/python
#

import sys


for line in sys.stdin:
    markdownline = '* ['
    splitlines = line.split()
    for ii in range(len(splitlines)-1):
        markdownline = markdownline + splitlines[ii+1] 
        if (ii < (len(splitlines)-3)):
            markdownline = markdownline + ' '       
    markdownline = markdownline + '](' + splitlines[0] + ') ' 
    print(markdownline)
    


