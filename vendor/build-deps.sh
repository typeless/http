#!/bin/sh -e
pushd uriparser/
./autogen.sh
mkdir -p build && cd build
../configure --prefix=/Users/mura/devel/http-forked/vendor/uriparser/build/sysroot/ --disable-doc --disable-test
make && make install
popd

pushd buffer/
make
popd
