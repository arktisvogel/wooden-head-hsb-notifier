#! /bin/bash
# This shell script invokes ``curl''
# in order to query the Hackerspace Bremen database.
# It processes the JSON stream with the
# program ``jshon'' (Copyright 2011 Kyle Keen <keenerd@gmail.com>).
#
# Copyright ©2016 Craig Parker-Feldmann.
# Licensed under the GNU General Public License, Version 3
#
STAMM=$(basename $0)
HSB_URL=https://hackerspacehb.appspot.com/v2/status

echo 'Shell script "'$0'" now running…' >&2

curl --silent $HSB_URL | \
  jshon | \
  tr '\}' '\n' | \
  grep '\"ST3\"'
# The above invocation is equivalent to:
#   curl --silent https://hackerspacehb.appspot.com/v2/status | jshon | tr '\}' '\n' | grep '\"ST3\"'

echo 'Shell script "'$0' done.' >&2
#
# As of 2017-06-14, the output of this shell script looks like this:
#
#   Shell script "./wooden-head-hsb-notifier.sh" now running…
#     "ST3": "CLOSED",
#   Shell script "./wooden-head-hsb-notifier.sh done.
#
# EOF
