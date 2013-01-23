# ROASt.ks
#
# Description:
# - R on a Stick: a Fedora Remix with the GNOME 3 Desktop Environment
# - Derived from /usr/share/spin-kickstarts/fedora-live-desktop.ks
#
# Maintainer(s):
# - M. Edward (Ed) Borasky <znmeb@znmeb.net>
#
# Note: I've removed all the minimizations and space saving tricks since 
# we're targeting USB sticks.

%include fedora-live-base.ks

# begin znmeb additions
part / --size 16348 --fstype ext4
repo --name=local --baseurl=file:///opt/RStudio
# end znmeb additions

%packages
@firefox
@gnome-desktop
@libreoffice

# FIXME; apparently the glibc maintainers dislike this, but it got put into the
# desktop image at some point.  We won't touch this one for now.
nss-mdns

# This one needs to be kicked out of @standard
-smartmontools

# The gnome-shell team does not want extensions in the default spin;
# ibus support in gnome-shell will be integrated in GNOME 3.4
-ibus-gnome3

# begin znmeb added packages

# Needed to build R packages
@development-tools

# End-user packages
aria2
curl
wget
vim-enhanced
vim-X11
powertop
kernel-tools
audacity
ggobi
R
antiword
rkward

# Graphviz
graphviz-R
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

# Headers
atlas-devel
expat-devel
fftw-devel
fontconfig-devel
freeglut-devel
freetype-devel
gd-devel
ggobi-devel
gmp-devel
gsl-devel
gtk2-devel
gts-devel
libcurl-devel
libicu-devel
libjpeg-turbo-devel
libpng-devel
libsndfile-devel
libtiff-devel
libtool-ltdl-devel
libXaw-devel
libxml2-devel
libXmu-devel
libXt-devel
mpfr-devel
openjpeg-devel
openssl-devel
qtwebkit-devel
R-devel
readline-devel
tcl-devel
tk-devel

# RStudio
rstudio

# de-branding
-fedora-logos
-fedora-release
-fedora-release-notes
generic-logos
generic-release
generic-release-notes
fedora-remix-logos
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
