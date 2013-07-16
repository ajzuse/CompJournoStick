
# copy files to the ISO
%post --nochroot

# conveniences for the 'liveuser' home
mkdir -p $INSTALL_ROOT/home/liveuser/
cp -a /usr/local/src/CompJournoStick/Scripts/common/bashrc \
  $INSTALL_ROOT/home/liveuser/.bashrc
cp -a /usr/local/src/CompJournoStick/Scripts/common/bash_profile \
  $INSTALL_ROOT/home/liveuser/.bash_profile
cp -a /usr/local/src/CompJournoStick/Scripts/common/Rprofile \
  $INSTALL_ROOT/home/liveuser/.Rprofile

mkdir -p $INSTALL_ROOT/home/liveuser/Scripts/
cp -a /usr/local/src/CompJournoStick/Scripts/* \
  $INSTALL_ROOT/home/liveuser/Scripts/
mkdir -p $INSTALL_ROOT/home/liveuser/Docs/
cp -a /usr/local/src/CompJournoStick/Docs/* \
  $INSTALL_ROOT/home/liveuser/Docs/

%end
