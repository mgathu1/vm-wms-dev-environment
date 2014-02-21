#!/bin/bash
# on centos minimal
# vim7.3
cd /usr/local/src
wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
tar -xjf vim-7.4.tar.bz2
cd vim74
./configure --disable-selinux \
  --enable-luainterp \
  --enable-perlinterp \
  --enable-pythoninterp \
  --enable-python3interp \
  --enable-tclinterp \
  --enable-rubyinterp \
  --enable-multibyte \
  --disable-gui \
  --with-features=huge \
  --with-modified-by=mutugi.gathuri@gmail.com

# Build and install
make
make install
