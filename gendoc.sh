#!/bin/sh
g=genextdoc.py
if test -f $g; then
    genextdoc=$g
else
    genextdoc=`which $g 2>/dev/null`
fi
if test "x$genextdoc" = x; then
    cat <<EOF
Need $g to generate the documentation.
Fetch it at http://trific.ath.cx/Ftp/python/$g
EOF
else
    python $genextdoc Levenshtein NEWS
fi
