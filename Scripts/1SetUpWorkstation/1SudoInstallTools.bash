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
  yumex \
  createrepo \
  gnome-terminal \
  evince \
  wget

# clock sync
service ntpd enable
service ntpd start

# Git, R, and GGobi
yum install -y \
  git-all \
  R-java-devel \
  ggobi-devel

# Editing
yum install -y \
  calibre \
  sigil \
  bluefish \
  lyx \
  FlightCrew \
  pandoc \
  pandoc-pdf

# Virtual hosting and Live ISO/USB tools
yum install -y \
  @virtualization \
  livecd-tools \
  spin-kickstarts \
  isomd5sum \
  liveusb-creator

# R package dependencies
yum install -y \
  libcurl-devel \
  bwidget \
  freeglut-devel \
  libXt-devel

# RStudio
./SudoBuildRStudioRepo.bash
yum install -y --nogpgcheck \
  rstudio
