#!/bin/bash
CLANG_VERSION=4.0.1
CLANG_DIR=clang+llvm-$CLANG_VERSION-x86_64-linux-gnu-debian8
curl http://releases.llvm.org/$CLANG_VERSION/$CLANG_DIR.tar.xz | tar xfJ - 
sudo rm -rf /usr/local/bin/clang* /usr/local/lib/clang
sudo cp -rf  $CLANG_DIR/bin/*  /usr/local/bin
sudo cp -rf  $CLANG_DIR/lib/clang  /usr/local/lib
rm -rf $CLANG_DIR
