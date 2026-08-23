#!/usr/bin/env bash

errorcnt=`grep Error res.txt|grep -v "0 Error"|wc -l`

#echo $errorcnt

if [ "$errorcnt" -gt "0" ]; then
    echo "$errorcnt error(s) found. Inspect res.txt for details"
fi

exit $errorcnt
