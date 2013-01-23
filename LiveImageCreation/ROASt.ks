# ROASt.ks
#
# Description:
# - R on a Stick Fedora Remix with the LXDE Desktop Environment
# - Derived from /usr/share/spin-kickstarts/fedora-livecd-lxde.ks
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
### LXDE desktop
@lxde-desktop
@lxde-apps
@lxde-media
@lxde-office
@firefox

# pam-fprint causes a segfault in LXDM when enabled
-fprintd-pam

# LXDE has lxpolkit. Make sure no other authentication agents end up in the spin.
-polkit-gnome
-polkit-kde

# make sure xfce4-notifyd is not pulled in
notification-daemon
-xfce4-notifyd

# make sure xfwm4 is not pulled in for firstboot
# https://bugzilla.redhat.com/show_bug.cgi?id=643416
metacity

# we need UPower for suspend and hibernate
upower

# begin znmeb added packages

# Needed to build R packages
@development-tools

# End-user packages
aria2
curl
wget
xterm
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
# LXDE and LXDM configuration

# create /etc/sysconfig/desktop (needed for installation)
cat > /etc/sysconfig/desktop <<EOF
PREFERRED=/usr/bin/startlxde
DISPLAYMANAGER=/usr/sbin/lxdm
EOF

cat >> /etc/rc.d/init.d/livesys << EOF
# disable screensaver locking and make sure gamin gets started
cat > /etc/xdg/lxsession/LXDE/autostart << FOE
/usr/libexec/gam_server
@lxpanel --profile LXDE
@pcmanfm --desktop --profile LXDE
/usr/libexec/notification-daemon
FOE

# set up preferred apps 
cat > /etc/xdg/libfm/pref-apps.conf << FOE 
[Preferred Applications]
WebBrowser=firefox.desktop
MailClient=redhat-sylpheed.desktop
FOE

# set up auto-login for liveuser
sed -i 's|# autologin=dgod|autologin=liveuser|g' /etc/lxdm/lxdm.conf

# Show harddisk install on the desktop
sed -i -e 's/NoDisplay=true/NoDisplay=false/' /usr/share/applications/liveinst.desktop
mkdir /home/liveuser/Desktop
cp /usr/share/applications/liveinst.desktop /home/liveuser/Desktop

# Add autostart for parcellite
cp /usr/share/applications/fedora-parcellite.desktop /etc/xdg/autostart

# this goes at the end after all other changes.
chown -R liveuser:liveuser /home/liveuser
restorecon -R /home/liveuser

EOF

%end
