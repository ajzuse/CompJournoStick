# Maintained by the Fedora Desktop SIG:
# http://fedoraproject.org/wiki/SIGs/Desktop
# mailto:desktop@lists.fedoraproject.org

%include fedora-live-base.ks

part / --size 8192

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

%end
