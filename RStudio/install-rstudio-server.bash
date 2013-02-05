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

pushd /opt/src/rstudio-*/build
  cmake \
    -DRSTUDIO_TARGET=Server \
    -DCMAKE_BUILD_TYPE=Release ..
  /usr/bin/time make install
popd

# Now configure it
useradd -r rstudio-server
cp /usr/local/lib/rstudio-server/extras/pam/rstudio /etc/pam.d
cp /usr/local/lib/rstudio-server/extras/init.d/redhat/rstudio-server /etc/init.d
chmod +x /etc/init.d/rstudio-server
/sbin/chkconfig --add rstudio-server
ln -f -s /usr/local/lib/rstudio-server/bin/rstudio-server /usr/sbin/rstudio-server
rstudio-server start

echo "Open TCP port 8787"
firewall-config
