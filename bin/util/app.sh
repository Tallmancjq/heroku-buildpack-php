#!/usr/bin/env bash

cd /app/.heroku/php
wget http://mirrors.kernel.org/gnu/m4/m4-1.4.9.tar.gz
tar -xzvf m4-1.4.9.tar.gz
cd m4-1.4.9
./configure --prefix=/app/.heroku/php
make && make install

cd /app/.heroku/php
wget http://mirrors.kernel.org/gnu/autoconf/autoconf-2.69.tar.gz
tar -xzvf autoconf-2.69.tar.gz
cd autoconf-2.69
./configure --prefix=/app/.heroku/php
make && make install

cd /app/.heroku/php
wget http://archive.ubuntu.com/ubuntu/pool/main/z/zlib/zlib_1.2.8.dfsg.orig.tar.gz
tar -xzvf zlib_1.2.8.dfsg.orig
cd zlib_1.2.8.dfsg.orig
./configure --prefix=/app/.heroku/php
make && make install