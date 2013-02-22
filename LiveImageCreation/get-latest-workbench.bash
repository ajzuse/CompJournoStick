#! /bin/bash -v

export VERSION=`curl \
  https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/tags \
  | grep 'tar\.gz' \
  | head -n 1 \
  | sed 's:^.*archive/v::' \
  | sed 's:\.tar\.gz.*$::'`
echo "Latest version is ${VERSION}"
export PROJECT='Computational-Journalism-Publishers-Workbench'
export DIR="${PROJECT}-${VERSION}"
export TARBALL="${DIR}.tar.gz"
export WHERE='https://github.com/znmeb/Computational-Journalism-Publishers-Workbench/archive'
export WHAT="v${VERSION}.tar.gz"
curl -L ${WHERE}/${WHAT} > ${TARBALL}
rm -fr ${DIR}
tar xf ${TARBALL}
