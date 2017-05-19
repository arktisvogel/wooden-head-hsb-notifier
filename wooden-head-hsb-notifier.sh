#! /bin/bash
# This shell script invokes ``curl''   
# in order to query the Hackerspace Bremen database.
# It processes the JSON stream with the 
# program ``jshon'' (Copyright 2011 Kyle Keen <keenerd@gmail.com>).
# Finally, it invokes AWK to only write those lines which
# contain the string:
#   "open"
# Copyright ©2016 Craig Parker-Feldmann.
# Licensed under the GNU General Public License, Version 3
#
STAMM=$(basename $0)
HSB_URL=https://hackerspacehb.appspot.com/v2/status

echo 'Shell script "'$0'" now running…' >&2
curl --silent $HSB_URL | \
    jshon -s "open" | \
echo 'Shell script "'$0' done.' >&2
#
# EOF
