#!/bin/bash
# on centos minimal
# vim7.3
VAGRANT_CORE_FOLDER=$(cat "/.puphpet-stuff/vagrant-core-folder.txt")

OS=$(/bin/bash "${VAGRANT_CORE_FOLDER}/shell/os-detect.sh" ID)
RELEASE=$(/bin/bash "${VAGRANT_CORE_FOLDER}/shell/os-detect.sh" RELEASE)
CODENAME=$(/bin/bash "${VAGRANT_CORE_FOLDER}/shell/os-detect.sh" CODENAME)
if [ "${OS}" == 'centos' ]; then
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
fi
