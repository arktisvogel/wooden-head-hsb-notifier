#! /bin/bash
# This shell script invokes “pandoc”
# in order to convert 2 files in markdown format
# into files in plain text format.
#
echo 'Shell script "'$0'" now running…' >&2

INPUT_FILE=INSTALL.md
OUTPUT_FILE=INSTALL.txt
pandoc --ascii --from=markdown --to=plain --output=$OUTPUT_FILE $INPUT_FILE && \
  echo 'Output file "'$OUTPUT_FILE'" successfully written.'

INPUT_FILE=README.md
OUTPUT_FILE=README.txt
pandoc --ascii --from=markdown --to=plain --output=$OUTPUT_FILE $INPUT_FILE && \
  echo 'Output file "'$OUTPUT_FILE'" successfully written.'

echo 'Shell script "'$0' done.' >&2
#
# EOF
