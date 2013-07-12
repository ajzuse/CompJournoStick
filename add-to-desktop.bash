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
sudo yum install -y \
  yum-plugin-fastestmirror

# cleanup and update
sudo yum clean all
sudo yum update -y

# R, development, live CD/DVD and USB tools
sudo yum install -y \
  gcc \
  gcc-c++ \
  gcc-gfortran \
  git-all \
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
  R2spec \
  R-java-devel \
  ggobi-devel \
  libcurl-devel \
  libxml2-devel \
  unixODBC-devel \
  freeglut-devel \
  libXt-devel \
  mock

# install new R2spec repository configuration file
sudo cp repos.cfg /etc/R2spec/repos.cfg

# make a place to build packages
rpmdev-setuptree

# create RStudio repository
./rstudio-repository.bash

# Desktop basics that may not be there
sudo yum install -y \
  firefox \
  vim-X11 \
  vim-enhanced \
  ntp \
  ntpdate

# Perl Twitter tools
sudo yum install -y \
  perl-Net-Twitter \
  perl-YAML \
  perl-YAML-Parser-Syck \
  perl-YAML-LibYAML \
  perl-YAML-Syck \
  perl-YAML-Tiny \
  perl-JSON \
  perl-JSON-XS \
  perl-JSON-Any \
  perl-JSON-PP \
  perl-Hash-Flatten

# Design suite
sudo yum install -y \
  blender \
  bluefish \
  cmyktool \
  darktable \
  dia \
  entangle \
  fontforge \
  font-manager \
  gimp \
  gimp-*-plugin \
  gpick \
  GREYCstoration-gimp  \
  hugin \
  inkscape \
  mypaint \
  nautilus-image-converter \
  optipng \
  scribus \
  colord-extra-profiles  \
  synfigstudio \
  xournal \
  gnote \
  pdfshuffler \
  filezilla \
  audacity \
  pitivi \
  gtk-recordmydesktop \
  aajohan-comfortaa-fonts \
  adobe-source-sans-pro-fonts \
  lato-fonts \
  overpass-fonts \
  
# Editing tools
sudo yum install -y \
  sigil \
  calibre \
  lyx \
  FlightCrew \
  qtwebkit \
  pandoc \
  pandoc-pdf

# Guest tools - harmless on host!
sudo yum install -y \
  open-vm-tools-desktop

# Video drivers - needed for some VM hosts
sudo yum install -y \
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

# RStudio (Desktop)
sudo yum install -y --nogpgcheck \
  rstudio
