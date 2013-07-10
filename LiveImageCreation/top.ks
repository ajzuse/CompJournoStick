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

repo --name=RStudioPackages --baseurl=file:///opt/RStudioPackages

%packages
@mate
compiz
compiz-plugins-main
compiz-plugins-extra
compiz-manager
compizconfig-python
compiz-plugins-unsupported
compiz-bcop
compiz-mate
libcompizconfig
compiz-plugins-main
ccsm
emerald-themes
emerald
fusion-icon
fusion-icon-gtk

# FIXME; apparently the glibc maintainers dislike this, but it got put into the
# desktop image at some point.  We won't touch this one for now.
nss-mdns

# begin znmeb added packages
# begin CompJournoStick packages
