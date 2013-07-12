# CompJournoStick.ks
#
# Description: Computational Journalism on a Stick - a Fedora Remix for
# computational journalists
#
# Derived from /usr/share/spin-kickstarts/fedora-live-desktop.ks
#
# Maintainer(s): M. Edward (Ed) Borasky <znmeb@znmeb.net>
# 
# Web site: https://znmeb.github.com/CompJournoStick
#
# License: AGPL3

%include fedora-live-base.ks

part / --size 16384 --fstype ext4

repo --name=RStudioPackages --baseurl=file:///opt/RStudioPackages

%packages
@firefox
@gnome-desktop
@libreoffice

# FIXME; apparently the glibc maintainers dislike this, but it got put into the
# desktop image at some point.  We won't touch this one for now.
nss-mdns

# This one needs to be kicked out of @standard
-smartmontools

# We use gnome-control-center's printer and input sources panels instead
-system-config-printer
-im-chooser

# begin znmeb added packages
# begin CompJournoStick packages
