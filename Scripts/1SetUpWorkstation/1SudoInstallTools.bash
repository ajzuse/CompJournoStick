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

# make sure 'fastestmirror' plugin is installed
yum install -y \
  yum-plugin-fastestmirror

# cleanup and update
yum clean all
yum update -y

# Desktop basics that may not be there
yum install -y \
  @firefox \
  vim-X11 \
  vim-enhanced \
  ntp \
  yumex

# clock sync
service ntpd enable
service ntpd start

# Git, R, and GGobi
yum install -y \
  git-all \
  R-java-devel \
  ggobi-devel

# RStudio from source
yum install -y \
  patch \
  libuuid-devel \
  qt-devel \
  qtwebkit-devel \
  ant \
  cmake \
  openssl-devel \
  pam-devel

# knitr
yum install -y \
  libcurl-devel

# Editing
yum install -y \
  calibre \
  sigil \
  bluefish \
  lyx \
  FlightCrew
