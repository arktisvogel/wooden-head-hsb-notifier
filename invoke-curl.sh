#! /bin/bash
# This shell script invokes ``curl''
# in order to download a JSON stream from the Hackerspace Bremen.
#
HSB_URL=https://hackerspacehb.appspot.com/v2/status
OUTPUT_FILE=invoke-curl-output.json
#
echo 'Shell script "'$0'" now running…' >&2

#curl -o $OUTPUT_FILE $HSB_URL && \
curl --output $OUTPUT_FILE $HSB_URL && \
  echo 'Output file "'$OUTPUT_FILE'" successfully written.'

echo 'Shell script "'$0' done.' >&2
#
# EOF
