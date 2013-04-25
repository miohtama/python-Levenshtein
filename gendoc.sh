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
Fetch it at https://github.com/joncasdam/python-Levenshtein/blob/master/$g
EOF
else
    python $genextdoc Levenshtein NEWS
fi
