#!/bin/bash

if [ `uname` == Linux ]; then
	chmod +x configure
	./configure \
		--prefix=$PREFIX 
fi

make || exit 1
make install

