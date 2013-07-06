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

sudo yum install -y \
  yum-plugin-fastestmirror

# cleanup
sudo yum clean all
sudo yum update -y

# Adobe repositories
sudo yum install -y \
  http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm

sudo yum install -y \
  flash-plugin

# Basics
sudo yum install -y \
  vim-X11 \
  vim-enhanced \
  vim-perl-support \
  vim-vimoutliner \
  @Firefox\ Web\ Browser \
  git-all \
  R-java-devel \
  R-RCurl \
  libcurl-devel \
  R-XML \
  libxml2-devel \
  R-RODBC \
  unixODBC-devel \
  ntp \
  ntpdate \
  sigil \
  calibre \
  qtwebkit

# RStudio Desktop
sudo yum install -y \
  http://download1.rstudio.org/rstudio-0.97.551-x86_64.rpm
