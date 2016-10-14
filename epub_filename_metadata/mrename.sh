#!/bin/bash
#
if [ $# -lt 3 ]
then
   echo
   echo "Usage: mrename -m <meta-type> <epub-file>"
   echo
else
   fileloc=`unzip -l "$3" | grep -Po '\b[^\s-]*\.opf\b'`
   metafound=`zipgrep  '<dc:'$2'(.*)>(.*)</dc:'$2'>' "$3" $fileloc`
   gotit=`expr "$metafound" : '.*<dc:'$2'.*>\(.*\)</dc:'$2'>.*'`
   spaced=`echo "$gotit" | sed 's/\s/_/g'`
   stripped=${spaced//[.,]/}
   mv -v "$3" "$stripped"_-_"$3"
fi
