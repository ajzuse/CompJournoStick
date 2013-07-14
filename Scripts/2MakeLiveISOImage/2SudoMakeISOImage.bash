#! /bin/bash
#
# Copyright (C) 2013 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

# get package list
./list-packages.pl | sort -u > package-list.txt

# make kickstart file
cat top.ks package-list.txt bottom.ks > CompJournoStick.ks

# save scripts and docs for live image
pushd ../../Scripts
rm -fr /opt/Target; mkdir -p /opt/Target
cd Scripts; ./cleanup.bash; cd ..
cp -a Scripts /opt/Target/Scripts
cp -a Docs /opt/Target/Docs
popd

# set up place where we'll build the ISO
rm -fr /opt/CompJournoStick; mkdir -p /opt/CompJournoStick
cp /usr/share/spin-kickstarts/*.ks /opt/CompJournoStick # base kickstart files
cp *.ks /opt/CompJournoStick/ # our over-rides

pushd /opt/CompJournoStick
setenforce 0 # disable SELinux

# make the ISO
/usr/bin/time livecd-creator \
  --config=CompJournoStick.ks \
  --fslabel=CompJournoStick --cache=/var/cache/live

# check the ISO
checkisomd5 --verbose CompJournoStick.iso
setenforce 1 # enable SELinux
popd
