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
  firefox \
  vim-X11 \
  vim-enhanced \
  vim-perl-support \
  vim-vimoutliner \
  git-all \
  R-java-devel \
  libcurl-devel \
  libxml2-devel \
  unixODBC-devel \
  ntp \
  ntpdate \
  sigil \
  calibre \
  lyx \
  bluefish \
  FlightCrew \
  qtwebkit \
  R2spec \
  xorg-x11-drv-qxl \
  tor \
  vidalia


# copy new repository configuration file
sudo cp repos.cfg /etc/R2spec/repos.cfg
