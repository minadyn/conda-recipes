#!/bin/bash

if [ `uname` == Linux ]; then
	chmod +x configure
	./configure --prefix=$PREFIX
fi

make || exit 1
make install
# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
