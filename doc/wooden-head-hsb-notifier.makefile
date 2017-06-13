# Runs LuaTeX on the file "wooden-head-hsb-notifier.luatex"
#
STAMM = wooden-head-hsb-notifier
SOURCE_CODE = ${STAMM}.luatex
OPTS = --interaction=batchmode --disable-write18
PDF_FILE = ${STAMM}.pdf
DVI_FILE = ${STAMM}.dvi
LOG_FILE = ${STAMM}.log

.PHONY: all clean

#all: ${DVI_FILE}
all: ${PDF_FILE}

${DVI_FILE}: ${SOURCE_CODE}
	@luatex ${OPTS} --output-format=dvi ${SOURCE_CODE} "\bye" && \
	  echo 'LuaTeX interpreter returned successfully.'

${PDF_FILE}: ${SOURCE_CODE}
	@luatex ${OPTS} ${SOURCE_CODE} "\bye" && \
	  echo 'LuaTeX interpreter returned successfully.'

clean:
	rm -f ${PDF_FILE} ${DVI_FILE} ${LOG_FILE}
#
# Local Variables:
# mode: makefile
# tab-width: 8
# End:
#
# EOF
