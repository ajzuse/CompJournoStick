# end CompJournoStick packages 
# De-branding
-fedora-logos
-fedora-release
-fedora-release-notes
generic-logos
generic-release
generic-release-notes
# end znmeb added packages
%end

# copy files to the ISO
%post --nochroot

# conveniences for the 'liveuser' home
mkdir -p $INSTALL_ROOT/home/liveuser
cp -a /usr/local/share/CompJournoStick/Scripts/common/bashrc \
  $INSTALL_ROOT/home/liveuser/.bashrc
cp -a /usr/local/share/CompJournoStick/Scripts/common/bash_profile \
  $INSTALL_ROOT/home/liveuser/.bash_profile
cp -a /usr/local/share/CompJournoStick/Scripts/common/Rprofile \
  $INSTALL_ROOT/home/liveuser/.Rprofile
cp -a /usr/local/share/CompJournoStick/Scripts \
  $INSTALL_ROOT/home/liveuser/Scripts
cp -a /usr/local/share/CompJournoStick/Docs \
  $INSTALL_ROOT/home/liveuser/Docs

# all of /usr/local goes to the ISO file!
mkdir -p $INSTALL_ROOT/usr/local/
cp -a /usr/local/* $INSTALL_ROOT/usr/local/

# and all of /usr/share/R/library
mkdir -p $INSTALL_ROOT/usr/share/R/library/
cp -a /usr/share/R/library/* $INSTALL_ROOT/usr/share/R/library/
%end

%post
cat >> /etc/rc.d/init.d/livesys << EOF


# make the installer show up
if [ -f /usr/share/applications/liveinst.desktop ]; then
  # Show harddisk install in shell dash
  sed -i -e 's/NoDisplay=true/NoDisplay=false/' /usr/share/applications/liveinst.desktop ""
fi
mkdir /home/liveuser/Desktop
cp /usr/share/applications/liveinst.desktop /home/liveuser/Desktop


# rebuild schema cache with any overrides we installed
glib-compile-schemas /usr/share/glib-2.0/schemas

# set up lightdm autologin
sed -i 's/^#autologin-user=.*/autologin-user=liveuser/' /etc/lightdm/lightdm.conf
sed -i 's/^#autologin-user-timeout=.*/autologin-user-timeout=0/' /etc/lightdm/lightdm.conf
#sed -i 's/^#show-language-selector=.*/show-language-selector=true/' /etc/lightdm/lightdm-gtk-greeter.conf

# set MATE as default session, otherwise login will fail
sed -i 's/^#user-session=.*/user-session=mate/' /etc/lightdm/lightdm.conf

# Turn off PackageKit-command-not-found while uninstalled
if [ -f /etc/PackageKit/CommandNotFound.conf ]; then
  sed -i -e 's/^SoftwareSourceSearch=true/SoftwareSourceSearch=false/' /etc/PackageKit/CommandNotFound.conf
fi

# make sure to set the right permissions and selinux contexts
chown -R liveuser:liveuser /home/liveuser/
restorecon -R /home/liveuser/
EOF

%end
