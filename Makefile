# $Id$
#
# Copyright (c) 2020, Juniper Networks, Inc.
# All rights reserved.

FILE_NAME :=  draft-kaliraj-idr-bgp-classful-transport-planes

.PHONY: xml-rfc-cp

.MAIN: xml-rfc-cp

xml-rfc-cp:
	xml2rfc ${FILE_NAME}.xml --text --html ;\
	scp ${FILE_NAME}.html ${USER}@ttsv-shell105:~/public_html/ ;\
	scp ${FILE_NAME}.txt ${USER}@ttsv-shell105:~/public_html/ ;\

