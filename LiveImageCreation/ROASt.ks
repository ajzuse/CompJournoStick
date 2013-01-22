# ROASt.ks
#
# Description:
# - R on a Stick Fedora Remix with the light-weight LXDE Desktop Environment
#
# Maintainer(s):
# - M. Edward (Ed) Borasky <znmeb@znmeb.net>

%include fedora-live-base.ks

part / --size 6144 --fstype ext4

repo --name=local --baseurl=file:///opt/RStudio

%packages
### LXDE desktop
@lxde-desktop
@lxde-apps
@lxde-media
@lxde-office
@multimedia
@firefox
@development-tools

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

# znmeb added packages
xterm
vim-enhanced
vim-X11
powertop
kernel-tools
rstudio
R-devel
ggobi-devel
gtk2-devel
freeglut-devel

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
