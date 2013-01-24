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
sudo yum group install -y \
  gnome-desktop \
  libreoffice \
  firefox \
  development-tools

# End-user packages
sudo yum install -y \
  aria2 \
  curl \
  wget \
  xterm \
  vim-enhanced \
  vim-X11 \
  powertop \
  kernel-tools \
  audacity \
  ggobi \
  R \
  antiword \
  rkward

# Graphviz
sudo yum install -y \
  graphviz-R \
  graphviz-devel \
  graphviz-devil \
  graphviz-doc \
  graphviz-gd \
  dot2tex \
  graphviz

# Natural Language Processing and Semantic Web
sudo yum install -y \
  raptor2 \
  raptor2-devel \
  python-nltk \
  wordnet \
  wordnet-devel

# Finance
sudo yum install -y \
  QuantLib-devel \
  QuantLib-doc \
  QuantLib-test \
  QuantLib

# Headers
sudo yum install -y \
  atlas-devel \
  expat-devel \
  fftw-devel \
  fontconfig-devel \
  freeglut-devel \
  freetype-devel \
  gd-devel \
  ggobi-devel \
  gmp-devel \
  gsl-devel \
  gtk2-devel \
  gts-devel \
  libcurl-devel \
  libicu-devel \
  libjpeg-turbo-devel \
  libpng-devel \
  libpng12 \
  libsndfile-devel \
  libtiff-devel \
  libtool-ltdl-devel \
  libXaw-devel \
  libxml2-devel \
  libXmu-devel \
  libXt-devel \
  mpfr-devel \
  openjpeg-devel \
  openssl-devel \
  qtwebkit-devel \
  R-devel \
  readline-devel \
  tcl-devel \
  tk-devel

./install-rstudio.bash
