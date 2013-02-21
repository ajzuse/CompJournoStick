#! /bin/bash -v

export VERSION=`curl \
  https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/tags \
  | grep 'tar\.gz' \
  | head -n 1 \
  | sed 's:^.*archive/::' \
  | sed 's:\.tar\.gz.*$::'`
echo "Latest version is ${VERSION}"
export PROJECT='Computational-Journalism-Publishers-Workbench'
export WHERE=https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/archive
export WHAT=${VERSION}.tar.gz
export DIR=${PROJECT}-${VERSION}
export TARBALL=${DIR}.tar.gz
curl -L ${WHERE}/${WHAT} > ${TARBALL}
rm -fr ${DIR}
tar xf ${TARBALL}
