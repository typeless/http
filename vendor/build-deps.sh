#!/bin/sh -e
pushd uriparser/
mkdir build && cd build
../configure --prefix=/Users/mura/devel/http-forked/vendor/uriparser/build/sysroot/ --disable-doc --disable-test
make && make install
popd
