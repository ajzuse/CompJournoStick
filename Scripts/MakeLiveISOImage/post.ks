
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

# copy R packages
mkdir -p $INSTALL_ROOT/usr/share/R/library/
cp -a /usr/share/R/library/* \
  $INSTALL_ROOT/usr/share/R/library/

# copy all of /usr/local for now - needs to be audited!!!!
mkdir -p $INSTALL_ROOT/usr/local/
cp -a /usr/local/* \
  $INSTALL_ROOT/usr/local/

# RStudio tools
mkdir -p $INSTALL_ROOT/opt/rstudio-tools/
cp -a /opt/rstudio-tools/* \
  $INSTALL_ROOT/opt/rstudio-tools/

%end
