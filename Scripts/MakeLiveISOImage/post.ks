
# copy files to the ISO
%post --nochroot

# Copy project to target liveuser home
mkdir -p $INSTALL_ROOT/home/liveuser
cp -a /opt/Project $INSTALL_ROOT/home/liveuser/CompJournoStick

%end

