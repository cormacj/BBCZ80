#!/usr/bin/env bash

# Create a DSK and put BBCBASIC.COM on it
# Requires cpcfs and caprice32
# My caprice32 config has Graduate CP/M roms installed.

rm A/0/BBCBASIC.COM
# rm A/0/*.REL
# rm A/0/*.LST
./RunCPM > res.txt

./validate.sh

if [ $? -eq 0 ]; then
    rm res.txt
    cpcfs bbcbasic-dev.dsk f
    cpcfs bbcbasic-dev.dsk p A/0/BBCBASIC.COM
    cpcfs bbcbasic-dev.dsk p PROFILE.SUB
    cpcfs bbcbasic-dev.dsk p B/0/SUBMIT*
    cap32 -a'|EMS' bbcbasic-dev.dsk
else
    echo "Error were found in validation. Run halted."
fi
