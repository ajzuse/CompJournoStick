
# copy files to the ISO
%post --nochroot

# conveniences for the 'liveuser' home
mkdir -p $INSTALL_ROOT/home/liveuser/
cp -a /opt/Scripts/common/bashrc $INSTALL_ROOT/home/liveuser/.bashrc
cp -a /opt/Scripts/common/bash_profile $INSTALL_ROOT/home/liveuser/.bash_profile
cp -a /opt/Scripts/common/Rprofile $INSTALL_ROOT/home/liveuser/.Rprofile

mkdir -p $INSTALL_ROOT/opt/Scripts/
cp -a /opt/Scripts/* $INSTALL_ROOT/opt/Scripts/
mkdir -p $INSTALL_ROOT/opt/Docs/
cp -a /opt/Docs/* $INSTALL_ROOT/opt/Docs/

%end
