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

source ~/.bash_profile

# Run update first
sudo yum update

# Package groups
sudo yum group install -y \
  gnome-desktop \
  multimedia \
  libreoffice \
  firefox \
  design-suite \
  development-tools \
  development-libs \
  virtualization \
  books \
  mongodb \
  sql-server \
  fedora-packager

# Developer packages
sudo yum install -y \
  cmake \
  yum-utils \
  livecd-tools \
  spin-kickstarts \
  liveusb-creator \
  isomd5sum \
  createrepo \
  yumex \
  R2spec \
  git-all \
  git-annex \
  git-annex-docs

# End-user packages
sudo yum install -y \
  xchat \
  pidgin \
  aria2 \
  curl \
  wget \
  vim-enhanced \
  vim-X11 \
  powertop \
  kernel-tools

# Graphviz
sudo yum install -y \
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

# PostgreSQL additions
sudo yum install -y \
  libreoffice-postgresql \
  postgresql-contrib \
  postgresql-devel \
  postgresql-docs \
  postgresql-odbc \
  postgresql-plparrot \
  postgresql-plperl \
  postgresql-plpython \
  postgresql-plpython3 \
  postgresql-plruby \
  postgresql-pltcl \
  pgadmin3

# eBook / Web / audio / photo / video editing
sudo yum install -y \
  inkscape-docs \
  inkscape-sozi \
  inkscape-view \
  scribus-doc \
  gtk-recordmydesktop \
  dia-gnomeDIAicons \
  audacity \
  audacity-manual \
  pitivi \
  GREYCstoration-gimp \
  gimp-data-extras \
  gimp-devel-tools \
  gimp-help \
  gimp-help-browser \
  gimp-lqr-plugin \
  gimp-resynthesizer \
  ufraw-gimp \
  xsane-gimp \
  gimp-fourier-plugin \
  bluefish \
  calibre \
  freemind \
  jabref \
  lyx \
  sigil

# Scraping tools
sudo yum install -y \
  python-mechanize \
  rubygem-mechanize \
  perl-WWW-Mechanize \
  perl-WWW-Mechanize-GZip \
  ImageMagick \
  ImageMagick-doc \
  GraphicsMagick \
  poppler-utils \
  tesseract \
  tesseract-devel \
  tesseract-langpack-bul \
  tesseract-langpack-cat \
  tesseract-langpack-ces \
  tesseract-langpack-chi_sim \
  tesseract-langpack-chi_tra \
  tesseract-langpack-dan \
  tesseract-langpack-dan-frak \
  tesseract-langpack-deu \
  tesseract-langpack-deu-frak \
  tesseract-langpack-ell \
  tesseract-langpack-fin \
  tesseract-langpack-fra \
  tesseract-langpack-hun \
  tesseract-langpack-ind \
  tesseract-langpack-ita \
  tesseract-langpack-jpn \
  tesseract-langpack-kor \
  tesseract-langpack-lav \
  tesseract-langpack-lit \
  tesseract-langpack-nld \
  tesseract-langpack-nor \
  tesseract-langpack-pol \
  tesseract-langpack-por \
  tesseract-langpack-ron \
  tesseract-langpack-rus \
  tesseract-langpack-slk \
  tesseract-langpack-slv \
  tesseract-langpack-spa \
  tesseract-langpack-srp \
  tesseract-langpack-swe \
  tesseract-langpack-swe-frak \
  tesseract-langpack-tgl \
  tesseract-langpack-tur \
  tesseract-langpack-ukr \
  tesseract-langpack-vie

# NoSQL
sudo yum install -y \
  desktopcouch \
  desktopcouch-tools \
  riak \
  redis

# Social Network Analysis
sudo yum install -y \
  python3-networkx \
  python-networkx \
  python-networkx-doc

# Geospatial
sudo yum install -y \
  spatialite-gui \
  spatialite-tools \
  postgis \
  postgis-docs \
  postgis-utils \
  pgRouting \
  osm2pgsql \
  qgis \
  qgis-grass \
  grass \
  gdal \
  gdal-doc \
  geos \
  proj

# LibreOffice add-ons
sudo yum install -y \
  libreoffice-emailmerge \
  libreoffice-graphicfilter \
  libreoffice-headless \
  libreoffice-impress \
  libreoffice-langpack-en \
  libreoffice-math \
  libreoffice-nlpsolver \
  libreoffice-ogltrans \
  libreoffice-opensymbol-fonts \
  libreoffice-pdfimport \
  libreoffice-presentation-minimizer \
  libreoffice-presenter-screen \
  libreoffice-report-builder \
  libreoffice-wiki-publisher \
  libreoffice-writer2latex \
  libreoffice-writer2xhtml \
  libreoffice-xsltfilter \
  ooo2gd \
  openoffice.org-diafilter

# R and friends
sudo yum install -y \
  R \
  R-devel \
  ggobi \
  rkward

# Missing headers
sudo yum install -y \
  qtwebkit-devel \
  libuuid-devel \
  gmp-devel \
  gsl-devel \
  sqlite-devel \
  netcdf-devel \
  freeglut-devel \
  fftw-devel \
  ggobi-devel \
  gdal-devel \
  geos-devel \
  proj-devel \
  mpfr-devel \
  libpng-devel \
  librsvg2-devel \
  libjpeg-turbo-devel \
  openjpeg-devel \
  libtiff-devel \
  libgeotiff-devel \
  libXt-devel \
  libsndfile-devel \
  openssl-devel \
  unixODBC-devel \
  atlas-devel \
  opencl-utils \
  opencl-utils-devel \
  blacs-openmpi-devel \
  openmpi-devel \
  scalapack-openmpi-devel
