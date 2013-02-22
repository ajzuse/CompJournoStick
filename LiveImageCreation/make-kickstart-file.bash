#! /bin/bash
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

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

# get package list
find ${DIR} -name 'yum-*.bash' | ./list-packages.pl | sort -u > package-list.txt

# make kickstart file
cat top.ks package-list.txt bottom.ks > CompJournoStick.ks
