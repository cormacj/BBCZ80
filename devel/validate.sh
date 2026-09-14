#!/usr/bin/env bash

errorcnt=`grep Error res.txt|grep -v "0 Error"|wc -l`

#echo $errorcnt

if [ "$errorcnt" -gt "0" ]; then
    echo "$errorcnt error(s) found. Inspect res.txt for details"
    sed -n '/Z80ASM AMSTRAD3/,/Symbols/p' res.txt
else
    echo "No errors found (Total errors: $errorcnt)"
fi

exit $errorcnt
