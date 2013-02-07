#! /bin/bash
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

# Update packages
sudo apt-get update
sudo apt-get upgrade

# Desktop tools
sudo apt-get install -y \
  xchat \
  pidgin \
  firefox \
  vim-gtk

# Developer tools
sudo apt-get install -y \
  fdutils \
  linux-doc \
  linux-source \
  linux-tools \
  cpufrequtils \
  patch \
  curl \
  wget \
  make \
  dkms \
  build-essential \
  gcc \
  vim

# Design Suite / Multimedia
# eBook / Web / audio / photo / video editing
sudo apt-get install -y \
  create-resources \
  imagemagick \
  imagemagick-doc \
  blender \
  dia \
  fontforge \
  fontmatrix \
  gimp \
  gimp-data-extras \
  gimp-help-en \
  inkscape \
  mypaint \
  nautilus-image-converter \
  optipng \
  pinta \
  postr \
  rawtherapee \
  scribus \
  shotwell \
  synfig \
  ufraw \
  audacity \
  gthumb \
  hugin \
  istanbul \
  openclipart \
  pitivi \
  pngcrush \
  gimp-gap \
  gimp-gmic \
  gimp-resynthesizer \
  gimp-texturize \
  gimp-ufraw \
  gmic \
  gmic-zart \
  sane \
  ufraw \
  ufraw-batch \
  xsane \
  gtk-recordmydesktop \
  bluefish \
  calibre \
  freemind \
  jabref \
  lyx

# Open/LibreOffice
sudo apt-get install -y \
  libreoffice-calc \
  libreoffice-draw \
  libreoffice-emailmerge \
  libreoffice-help-en-us \
  libreoffice-impress \
  libreoffice-math \
  libreoffice-nlpsolver \
  libreoffice-ogltrans \
  libreoffice-pdfimport \
  libreoffice-presentation-minimizer \
  libreoffice-presenter-console \
  libreoffice-writer \
  ooohg \
  docvert \
  docvert-libreoffice \
  jabref-plugin-oo \
  libreoffice \
  libreoffice-dmaths \
  libreoffice-filter-mobiledev \
  libreoffice-lightproof-en \
  libreoffice-sdbc-postgresql \
  libreoffice-templates \
  libreoffice-wiki-publisher \
  libreoffice-writer2latex \
  libreoffice-writer2xhtml \
  openclipart-libreoffice \
  openclipart2-libreoffice \
  writer2latex \
  writer2latex-manual

# NoSQL
sudo apt-get install -y \
  couchdb \
  redis-server \
  mongodb

# Scraping tools
sudo apt-get install -y \
  libwww-mechanize-gzip-perl \
  libwww-mechanize-perl \
  python-mechanize \
  ruby-mechanize \
  imagemagick \
  imagemagick-doc \
  graphicsmagick \
  poppler-utils \
  tesseract-ocr \
  tesseract-ocr-afr \
  tesseract-ocr-ara \
  tesseract-ocr-aze \
  tesseract-ocr-bel \
  tesseract-ocr-ben \
  tesseract-ocr-bul \
  tesseract-ocr-cat \
  tesseract-ocr-ces \
  tesseract-ocr-chi-sim \
  tesseract-ocr-chi-tra \
  tesseract-ocr-chr \
  tesseract-ocr-dan \
  tesseract-ocr-deu \
  tesseract-ocr-deu-frak \
  tesseract-ocr-ell \
  tesseract-ocr-eng \
  tesseract-ocr-enm \
  tesseract-ocr-epo \
  tesseract-ocr-equ \
  tesseract-ocr-est \
  tesseract-ocr-eus \
  tesseract-ocr-fin \
  tesseract-ocr-fra \
  tesseract-ocr-frk \
  tesseract-ocr-frm \
  tesseract-ocr-glg \
  tesseract-ocr-heb \
  tesseract-ocr-hin \
  tesseract-ocr-hrv \
  tesseract-ocr-hun \
  tesseract-ocr-ind \
  tesseract-ocr-isl \
  tesseract-ocr-ita \
  tesseract-ocr-ita-old \
  tesseract-ocr-jpn \
  tesseract-ocr-kan \
  tesseract-ocr-kor \
  tesseract-ocr-lav \
  tesseract-ocr-lit \
  tesseract-ocr-mal \
  tesseract-ocr-mkd \
  tesseract-ocr-mlt \
  tesseract-ocr-msa \
  tesseract-ocr-nld \
  tesseract-ocr-nor \
  tesseract-ocr-osd \
  tesseract-ocr-pol \
  tesseract-ocr-por \
  tesseract-ocr-ron \
  tesseract-ocr-rus \
  tesseract-ocr-slk \
  tesseract-ocr-slk-frak \
  tesseract-ocr-slv \
  tesseract-ocr-spa \
  tesseract-ocr-spa-old \
  tesseract-ocr-sqi \
  tesseract-ocr-srp \
  tesseract-ocr-swa \
  tesseract-ocr-swe \
  tesseract-ocr-tam \
  tesseract-ocr-tel \
  tesseract-ocr-tgl \
  tesseract-ocr-tha \
  tesseract-ocr-tur \
  tesseract-ocr-ukr \
  tesseract-ocr-vie

# PostgreSQL
sudo apt-get install -y \
  pgadmin3 \
  postgresql \
  postgresql-client \
  postgresql-contrib \
  postgresql-doc \
  postgresql-plperl \
  postgresql-plpython \
  postgresql-server-dev-all

# Natural language processing / semantic web
sudo apt-get install -y \
  libraptor2-doc \
  libraptor2-dev \
  raptor2-utils \
  python-nltk \
  wordnet \
  wordnet-base \
  wordnet-dev \
  wordnet-grind \
  wordnet-gui \
  wordnet-sense-index

# Spatial
sudo apt-get install -y \
  dans-gdal-scripts \
  gdal-bin \
  libgdal-dev \
  libgdal-doc \
  qlandkartegt \
  grass \
  grass-dev \
  grass-doc \
  grass-gui \
  libgeos-dev \
  libgeos-doc \
  libspatialite-dev \
  mapserver-bin \
  mapserver-doc \
  ogdi-bin \
  spatialite-bin \
  spatialite-gui \
  postgis \
  osm2pgsql \
  imposm \
  qgis \
  gpx2shp \
  qgis-api-doc \
  qgis-mapserver \
  qgis-plugin-grass \
  qgis-providers \
  libproj-dev \
  proj-bin \
  proj-data \
  proj-ps-doc \
  libnetcdf-dev

# Social network analysis
sudo apt-get install -y \
  python-networkx \
  python-networkx-doc

# Finance
sudo apt-get install -y \
  libquantlib0-dev  \
  quantlib-examples  \
  quantlib-refman-html

# R and friends
sudo apt-get install -y \
  rkward \
  ggobi

