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

# Download RStudio source
export VERSION=`curl -L http://www.rstudio.com/ide/download/server|grep github.*tarball|sed 's/^.*tarball\///'|sed 's/".*$//'`

echo "Fetching RStudio ${VERSION}"
export HERE=`pwd` # save pointer to where the hacked files are

# get source tarball from Github
mkdir -p /usr/local/src
pushd /usr/local/src
  rm -fr rstudio*
  curl -k -L https://github.com/rstudio/rstudio/tarball/${VERSION} > rstudio.tgz
  tar xf rstudio.tgz

  pushd rstudio-*

    # add mate-terminal to list of Linux terminals
    pushd src/cpp/session/modules
      patch -b ./SessionWorkbench.cpp ${HERE}/SessionWorkbench.patch
    popd

    pushd dependencies/common
      for i in gwt dictionaries mathjax boost
      do
        patch -b ./install-$i ${HERE}/install-$i.patch
        /usr/bin/time ./install-$i
      done
    popd

    patch -b src/gwt/build.xml ${HERE}/build.xml.patch
    mkdir build
  popd

popd

# Install RStudio Desktop
pushd /usr/local/src/rstudio-*/build
  cmake \
    -DRSTUDIO_TARGET=Desktop \
    -DCMAKE_BUILD_TYPE=Release ..
  export NUMCPUS=`grep -c '^processor' /proc/cpuinfo`
  /usr/bin/time make -j$NUMCPUS --load-average=$NUMCPUS install
popd

# make it callable from a terminal
ln -sf /usr/local/lib/rstudio/bin/rstudio /usr/local/bin/rstudio

# make desktop file visible to auto menus
cp /usr/local/src/rstudio-*/build/src/cpp/desktop/resources/freedesktop/rstudio.desktop \
  /usr/local/share/applications/

# Install RStudio Server
pushd /usr/local/src/rstudio-*/build
  cmake \
    -DRSTUDIO_TARGET=Server \
    -DCMAKE_BUILD_TYPE=Release ..
  export NUMCPUS=`grep -c '^processor' /proc/cpuinfo`
  /usr/bin/time make -j$NUMCPUS --load-average=$NUMCPUS install
popd

# Configure RStudio Server
useradd -r rstudio-server
cp /usr/local/lib/rstudio-server/extras/pam/rstudio /etc/pam.d
cp /usr/local/lib/rstudio-server/extras/init.d/redhat/rstudio-server /etc/init.d
chmod +x /etc/init.d/rstudio-server
/sbin/chkconfig --add rstudio-server
ln -f -s /usr/local/lib/rstudio-server/bin/rstudio-server /usr/sbin/rstudio-server
chkconfig rstudio-server on
/etc/init.d/rstudio-server start

echo "Opening TCP port 8787 for local and remote access!"
firewall-cmd --permanent --add-port 8787/tcp
firewall-cmd --add-port 8787/tcp
