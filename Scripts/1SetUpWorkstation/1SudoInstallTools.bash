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
  @mate-desktop \
  @firefox \
  vim-X11 \
  vim-enhanced \
  ntp \
  yumex \
  xmonad-mate \
  xmonad-log-applet-mate

# clock sync
service ntpd enable
service ntpd start

# Git, R, and GGobi
yum install -y \
  git-all \
  R-java-devel \
  ggobi-devel

# Dependencies for packages and task views
yum install -y \
  libcurl-devel \
  libxml2-devel \
  freeglut-devel \
  libXt-devel \
  bwidget \
  pandoc \
  pandoc-pdf \
  gdal-devel \
  gdal-doc \
  geos-devel \
  proj-devel \
  proj-epsg \
  armadillo-devel \
  poppler-devel \
  freexl-devel \
  libwebp-devel \
  expat-devel \
  xerces-c-devel \
  libjpeg-turbo-devel \
  jasper-devel \
  netcdf-devel \
  hdf5-devel \
  libgeotiff-devel \
  cfitsio-devel \
  unixODBC-devel

# Video drivers - needed for some VM hosts
yum install -y \
  xorg-x11-drv-apm \
  xorg-x11-drv-ati \
  xorg-x11-drv-cirrus \
  xorg-x11-drv-dummy \
  xorg-x11-drv-fbdev \
  xorg-x11-drv-glint \
  xorg-x11-drv-i128 \
  xorg-x11-drv-i740 \
  xorg-x11-drv-intel \
  xorg-x11-drv-ivtv \
  xorg-x11-drv-mach64 \
  xorg-x11-drv-mga \
  xorg-x11-drv-modesetting \
  xorg-x11-drv-nouveau \
  xorg-x11-drv-openchrome \
  xorg-x11-drv-qxl \
  xorg-x11-drv-r128 \
  xorg-x11-drv-rendition \
  xorg-x11-drv-s3virge \
  xorg-x11-drv-savage \
  xorg-x11-drv-siliconmotion \
  xorg-x11-drv-sis \
  xorg-x11-drv-sisusb \
  xorg-x11-drv-tdfx \
  xorg-x11-drv-trident \
  xorg-x11-drv-v4l \
  xorg-x11-drv-vesa \
  xorg-x11-drv-vmware \
  xorg-x11-drv-voodoo

# RStudio source
yum install -y \
  patch

# RStudio Desktop and Server
yum install -y \
  libuuid-devel \
  qt-devel \
  qtwebkit-devel \
  ant \
  cmake \
  openssl-devel \
  pam-devel

# Editing
yum install -y \
  calibre \
  sigil \
  bluefish \
  lyx \
  FlightCrew
