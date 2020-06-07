#!/bin/sh

VERSION="8.32"

mkdir -p tmp source

cd source
mkdir -p ./usr/bin ./usr/share/man/man1
cd -

git clone git://git.sv.gnu.org/coreutils tmp/coreutils
cd tmp/coreutils
git checkout $VERSION

./bootstrap

cd ../..
mkdir -p build
cd build
../tmp/coreutils/configure
make -j8

cd src
find . -type f ! -name "*.*" -exec install {} ../../source/usr/bin/{} \;
cd ../
cp man/* ../source/usr/share/man/man1
cd ../source/usr/share/man/man1 && find . -type f -exec gzip {} \;
cd ../source/usr/bin && mv ginstall install
