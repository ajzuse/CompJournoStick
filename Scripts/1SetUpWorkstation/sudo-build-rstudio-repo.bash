#! /bin/bash
#
# Copyright (C) 2013 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

rm -fr /opt/RStudioRepo; mkdir -p /opt/RStudioRepo
pushd /opt/RStudioRepo
wget `curl -s http://www.rstudio.com/ide/download/desktop|grep rpm|sort -u|sed 's/^.*href="//'|sed 's/".*$//'`
popd

createrepo /opt/RStudioRepo
rm -f /etc/yum.repos.d/opt_RStudioRepo.repo
yum-config-manager --add-repo file:///opt/RStudioRepo
yum clean all
yum check-update
