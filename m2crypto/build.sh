#!/bin/bash

file1="/usr/include/openssl/opensslconf-x86_64.h"
file2="/usr/include/openssl/opensslconf-i386.h"
if [[ -f $file1 || -f $file2 ]]; then
	chmod +x fedora_setup.sh
	./fedora_setup.sh build
	./fedora_setup.sh install
else
	echo 'lol'
	#$PYTHON setup.py install	
fi


# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
