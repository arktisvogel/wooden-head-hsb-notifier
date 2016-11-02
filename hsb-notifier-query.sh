#! /bin/bash
# This shell script invokes ``curl''   
# in order to query the Hackerspace Bremen database.
# It processes the JSON stream with the program ``jshon''.
# Finally, it invokes AWK to only write those lines which
# contain the string:
#   "open"
#
STAMM=$(basename $0)
HSB_URL=https://hackerspacehb.appspot.com/v2/status

echo 'Shell script "'$STAMM'" now running…'
curl --silent $HSB_URL | \
    jshon -S | \
    awk '/\"open\"/'
echo 'Shell script "'$STAMM' done.'
#
# EOF
