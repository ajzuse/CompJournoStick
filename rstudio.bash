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

# Create a repository
sudo rm -fr /opt/RStudioPackages
sudo mkdir -p /opt/RStudioPackages

# Get the RStudio Desktop RPMs
pushd /opt/RStudioPackages
sudo wget http://download1.rstudio.org/rstudio-0.97.551-x86_64.rpm
sudo wget http://download1.rstudio.org/rstudio-0.97.551-i686.rpm
popd

# Make repository and enable it with yum
sudo createrepo --database /opt/RStudioPackages
sudo yum-config-manager --add-repo file:///opt/RStudioPackages/

# Install
sudo yum install -y \
  rstudio
