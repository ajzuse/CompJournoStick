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

# Desktop basics that may not be there
sudo yum install -y \
  @mate-desktop \
  @firefox \
  vim-X11 \
  vim-enhanced \
  ntp \
  ntpdate \
  yumex

# Git, createrepo, R, GGobi and RStudio
sudo yum install -y \
  git-all \
  createrepo \
  R-java-devel \
  ggobi-devel

# create RStudio repository
./rstudio-repository.bash

# install RStudio (Desktop)
sudo yum install -y --nogpgcheck \
  rstudio

# Dependencies for packages and task views
sudo yum install -y \
  libcurl-devel \
  libxml2-devel \
  freeglut-devel \
  libXt-devel \
  pandoc \
  pandoc-pdf
