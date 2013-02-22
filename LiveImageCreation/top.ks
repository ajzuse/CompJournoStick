# CompJournoStick.ks
#
# Description: Computational Journalism on a Stick - a Fedora Remix for
# computational journalists
#
# Derived from /usr/share/spin-kickstarts/fedora-livecd-lxde.ks
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

# begin CompJournoStick packages
