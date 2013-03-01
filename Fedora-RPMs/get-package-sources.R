#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#
packages <- installed.packages()
write.csv(packages, file='packages.csv', row.names=FALSE, col.names=TRUE)
download.packages(
  pkgs=packages[,1],
  destdir='~/rpmbuild/SOURCES',
  method='lynx'
)
warnings()
