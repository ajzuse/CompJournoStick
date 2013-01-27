# CompJournoStick.ks
#
# Description: Computational Journalism on a Stick - a Fedora Remix for
# computational journalists
#
# Derived from /usr/share/spin-kickstarts/fedora-live-desktop.ks
# I've removed all the minimizations and space saving tricks since we're 
# targeting USB sticks.
#
# Maintainer(s): M. Edward (Ed) Borasky <znmeb@znmeb.net>
# 
# Web site: https://znmeb.github.com/CompJournoStick
#
# License: AGPL3

%include fedora-live-base.ks

part / --size 16384 --fstype ext4

%packages
@firefox
@gnome-desktop
@libreoffice

# FIXME; apparently the glibc maintainers dislike this, but it got put into the
# desktop image at some point.  We won't touch this one for now.
nss-mdns

# begin znmeb added packages

# Package groups
@multimedia
@design-suite
@development-tools
@development-libs
@virtualization
@books
@mongodb
@sql-server
@fedora-packager

# Developer packages
cmake
yum-utils
livecd-tools
spin-kickstarts
liveusb-creator
isomd5sum
createrepo
yumex
R2spec
git-all
git-annex
git-annex-docs
dkms

# End-user packages
xchat
pidgin
aria2
curl
wget
vim-enhanced
vim-X11
powertop
kernel-tools

# Graphviz
graphviz-devel
graphviz-devil
graphviz-doc
graphviz-gd
dot2tex
graphviz

# Natural Language Processing and Semantic Web
raptor2
raptor2-devel
python-nltk
wordnet
wordnet-devel

# Finance
QuantLib-devel
QuantLib-doc
QuantLib-test
QuantLib

# PostgreSQL additions
libreoffice-postgresql
postgresql-contrib
postgresql-devel
postgresql-docs
postgresql-odbc
postgresql-plparrot
postgresql-plperl
postgresql-plpython
postgresql-plpython3
postgresql-plruby
postgresql-pltcl
pgadmin3

# eBook / Web / audio / photo / video editing
inkscape-docs
inkscape-sozi
inkscape-view
scribus-doc
gtk-recordmydesktop
dia-gnomeDIAicons
audacity
audacity-manual
pitivi
GREYCstoration-gimp
gimp-data-extras
gimp-devel-tools
gimp-help
gimp-help-browser
gimp-lqr-plugin
gimp-resynthesizer
ufraw-gimp
xsane-gimp
gimp-fourier-plugin
bluefish
calibre
freemind
jabref
lyx
sigil

# Scraping tools
python-mechanize
rubygem-mechanize
perl-WWW-Mechanize
perl-WWW-Mechanize-GZip
ImageMagick
ImageMagick-doc
GraphicsMagick
poppler-utils
tesseract
tesseract-devel
tesseract-langpack-bul
tesseract-langpack-cat
tesseract-langpack-ces
tesseract-langpack-chi_sim
tesseract-langpack-chi_tra
tesseract-langpack-dan
tesseract-langpack-dan-frak
tesseract-langpack-deu
tesseract-langpack-deu-frak
tesseract-langpack-ell
tesseract-langpack-fin
tesseract-langpack-fra
tesseract-langpack-hun
tesseract-langpack-ind
tesseract-langpack-ita
tesseract-langpack-jpn
tesseract-langpack-kor
tesseract-langpack-lav
tesseract-langpack-lit
tesseract-langpack-nld
tesseract-langpack-nor
tesseract-langpack-pol
tesseract-langpack-por
tesseract-langpack-ron
tesseract-langpack-rus
tesseract-langpack-slk
tesseract-langpack-slv
tesseract-langpack-spa
tesseract-langpack-srp
tesseract-langpack-swe
tesseract-langpack-swe-frak
tesseract-langpack-tgl
tesseract-langpack-tur
tesseract-langpack-ukr
tesseract-langpack-vie

# NoSQL
couchdb
riak
redis

# Social Network Analysis
python3-networkx
python-networkx
python-networkx-doc

# Geospatial
spatialite-gui
spatialite-tools
postgis
postgis-docs
postgis-utils
pgRouting
osm2pgsql
qgis
qgis-grass
grass
gdal
gdal-doc
geos
proj

# LibreOffice add-ons
libreoffice-emailmerge
libreoffice-graphicfilter
libreoffice-headless
libreoffice-impress
libreoffice-langpack-en
libreoffice-math
libreoffice-nlpsolver
libreoffice-ogltrans
libreoffice-opensymbol-fonts
libreoffice-pdfimport
libreoffice-presentation-minimizer
libreoffice-presenter-screen
libreoffice-report-builder
libreoffice-wiki-publisher
libreoffice-writer2latex
libreoffice-writer2xhtml
libreoffice-xsltfilter
ooo2gd
openoffice.org-diafilter

# R and friends
R
R-devel
ggobi
rkward

# Missing headers
qtwebkit-devel
libuuid-devel
gmp-devel
gsl-devel
sqlite-devel
netcdf-devel
freeglut-devel
fftw-devel
ggobi-devel
gdal-devel
geos-devel
proj-devel
mpfr-devel
libpng-devel
librsvg2-devel
libjpeg-turbo-devel
openjpeg-devel
libtiff-devel
libgeotiff-devel
libXt-devel
libsndfile-devel
openssl-devel
unixODBC-devel
atlas-devel
opencl-utils
opencl-utils-devel
blacs-openmpi-devel
openmpi-devel
scalapack-openmpi-devel

# De-branding
-fedora-logos
-fedora-release
-fedora-release-notes
generic-logos
generic-release
generic-release-notes
# end znmeb added packages
%end

%post
cat >> /etc/rc.d/init.d/livesys << EOF
# disable screensaver locking
cat >> /usr/share/glib-2.0/schemas/org.gnome.desktop.screensaver.gschema.override << FOE
[org.gnome.desktop.screensaver]
lock-enabled=false
FOE

# and hide the lock screen option
cat >> /usr/share/glib-2.0/schemas/org.gnome.desktop.lockdown.gschema.override << FOE
[org.gnome.desktop.lockdown]
disable-lock-screen=true
FOE

# disable updates plugin
cat >> /usr/share/glib-2.0/schemas/org.gnome.settings-daemon.plugins.updates.gschema.override << FOE
[org.gnome.settings-daemon.plugins.updates]
active=false
FOE

# make the installer show up
if [ -f /usr/share/applications/liveinst.desktop ]; then
  # Show harddisk install in shell dash
  sed -i -e 's/NoDisplay=true/NoDisplay=false/' /usr/share/applications/liveinst.desktop ""
  # need to move it to anaconda.desktop to make shell happy
  mv /usr/share/applications/liveinst.desktop /usr/share/applications/anaconda.desktop

  cat >> /usr/share/glib-2.0/schemas/org.gnome.shell.gschema.override << FOE
[org.gnome.shell]
favorite-apps=['firefox.desktop', 'evolution.desktop', 'empathy.desktop', 'rhythmbox.desktop', 'shotwell.desktop', 'openoffice.org-writer.desktop', 'nautilus.desktop', 'anaconda.desktop']
FOE

  # Make the welcome screen show up
  if [ -f /usr/share/anaconda/gnome/fedora-welcome.desktop ]; then
    mkdir -p ~liveuser/.config/autostart
    cp /usr/share/anaconda/gnome/fedora-welcome.desktop /usr/share/applications/
    cp /usr/share/anaconda/gnome/fedora-welcome.desktop ~liveuser/.config/autostart/
    chown -R liveuser:liveuser /home/liveuser/.config/
  fi
fi

# rebuild schema cache with any overrides we installed
glib-compile-schemas /usr/share/glib-2.0/schemas

# set up auto-login
cat >> /etc/gdm/custom.conf << FOE
[daemon]
AutomaticLoginEnable=True
AutomaticLogin=liveuser
FOE

# Turn off PackageKit-command-not-found while uninstalled
if [ -f /etc/PackageKit/CommandNotFound.conf ]; then
  sed -i -e 's/^SoftwareSourceSearch=true/SoftwareSourceSearch=false/' /etc/PackageKit/CommandNotFound.conf
fi

EOF

%end
