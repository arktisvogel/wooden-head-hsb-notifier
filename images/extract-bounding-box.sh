#! /bin/bash
# This shell script invokes ``extractbb''
# in order to determine the bounding box of a graphics file.
#
INPUT_FILE=whhn-03.jpg
OUTPUT_FILE=whhn-03.xbb
#
echo 'Shell script "'$0'" now running…' >&2

extractbb $INPUT_FILE && \
  echo 'Output file "'$OUTPUT_FILE'" successfully written.'

echo 'Shell script "'$0' done.' >&2
#
# EOF
