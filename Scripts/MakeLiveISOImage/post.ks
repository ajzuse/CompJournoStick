# copy files to the ISO
%post --nochroot

# Copy scripts and docs to target /opt
mkdir -p $INSTALL_ROOT/opt/Scripts/
cp -a /opt/Scripts/* $INSTALL_ROOT/opt/Scripts/
mkdir -p $INSTALL_ROOT/opt/Docs/
cp -a /opt/Docs/* $INSTALL_ROOT/opt/Docs/

# conveniences for the 'liveuser' home
mkdir -p $INSTALL_ROOT/home/liveuser/
cp -a $INSTALL_ROOT/opt/Scripts/common/bashrc \
  $INSTALL_ROOT/home/liveuser/.bashrc
cp -a $INSTALL_ROOT/opt/Scripts/common/bash_profile \
  $INSTALL_ROOT/home/liveuser/.bash_profile
cp -a $INSTALL_ROOT/opt/Scripts/common/Rprofile \
  $INSTALL_ROOT/home/liveuser/.Rprofile

%end
