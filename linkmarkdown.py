#!/usr/bin/python
#

import sys


for line in sys.stdin:
    markdownline = '* ['
    splitlines = line.split()
    # todo? if len(splitlines > 1) ?
    for ii in range(len(splitlines)-1):
        markdownline = markdownline + splitlines[ii+1] 
        if (ii < (len(splitlines)-2)):
            markdownline = markdownline + ' '

    # if no title, title=url
    # todo: strip http(s)
    if (markdownline == '* ['):
        markdownline = markdownline + splitlines[0]
    
    markdownline = markdownline + '](' + splitlines[0] + ') ' 
    print(markdownline)
    


