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

# Package groups
sudo yum groups install -y \
  virtualization \
  fedora-packager

# Packages
sudo yum install -y \
  google-perftools-devel \
  glibc-devel.x86_64 \
  glibc-devel.i686 \
  yum-utils \
  vim-enhanced \
  vim-X11 \
  curl \
  wget \
  aria2 \
  livecd-tools \
  spin-kickstarts \
  liveusb-creator \
  isomd5sum \
  createrepo \
  yumex
