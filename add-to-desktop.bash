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

# Live CD/DVD and USB tools
sudo yum install -y \
  @development-tools \
  fedora-packager \
  yum-utils \
  livecd-tools \
  spin-kickstarts \
  liveusb-creator \
  isomd5sum \
  createrepo \
  curl \
  wget \
  lynx \
  aria2 \
  fedora-review \
  mock

# make a place to build packages
rpmdev-setuptree

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
  R-bigmemory \
  R-bigmemory-devel \
  R-RSQLite \
  R-RScaLAPACK \
  R-biglm \
  R-rlecuyer \
  R-xtable \
  R-DBI \
  ntp \
  ntpdate \
  sigil \
  calibre \
  qtwebkit \
  R2spec

# copy new repository configuration file
sudo cp repos.cfg /etc/R2spec/repos.cfg

# RStudio Desktop
sudo yum install -y \
  http://download1.rstudio.org/rstudio-0.97.551-x86_64.rpm
