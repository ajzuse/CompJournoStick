#! /bin/bash -v

export WHERE=https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/archive
export VERSION=`curl \
  https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/tags \
  | grep 'tar\.gz' \
  | head -n 1 \
  | sed 's:^.*archive/::' \
  | sed 's:\.tar\.gz.*$::'`
echo ${VERSION}
export WHAT=${VERSION}.tar.gz
export PROJECT='Computational-Journalism-Publishers-Workbench'
curl -L ${WHERE}/${WHAT} > ${PROJECT}-${WHAT}
