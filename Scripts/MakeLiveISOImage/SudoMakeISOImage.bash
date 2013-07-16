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

# start with MATE desktop
cp /usr/share/spin-kickstarts/fedora-live-mate-compiz.ks CompJournoStick.ks

# make the root partition bigger
echo 'part / --size 16384 --fstype ext4' >> CompJournoStick.ks

# add package list
./list-packages.pl | sort -u > package-list.txt
echo '%packages' >> CompJournoStick.ks
cat package-list.txt >> CompJournoStick.ks

# De-branding
echo '-fedora-logos' >> CompJournoStick.ks
echo '-fedora-release' >> CompJournoStick.ks
echo '-fedora-release-notes' >> CompJournoStick.ks
echo 'generic-logos' >> CompJournoStick.ks
echo 'generic-release' >> CompJournoStick.ks
echo 'generic-release-notes' >> CompJournoStick.ks
echo '%end' >> CompJournoStick.ks

# '%post' to copy files to image
cat post.ks >> CompJournoStick.ks

# save scripts and docs for live image
pushd ../..
rm -fr /usr/local/src/CompJournoStick; mkdir -p /usr/local/src/CompJournoStick/
cp -a Scripts /usr/local/src/CompJournoStick/
cp -a Docs /usr/local/src/CompJournoStick/
popd

# set up place where we'll build the ISO
rm -fr /opt/CompJournoStick; mkdir -p /opt/CompJournoStick/
cp /usr/share/spin-kickstarts/*.ks /opt/CompJournoStick # base kickstart files
cp CompJournoStick.ks /opt/CompJournoStick/ # our over-rides

pushd /opt/CompJournoStick/
setenforce 0 # disable SELinux

# make the ISO
/usr/bin/time livecd-creator \
  --config=CompJournoStick.ks \
  --fslabel=CompJournoStick --cache=/var/cache/live

# check the ISO
checkisomd5 --verbose CompJournoStick.iso
setenforce 1 # enable SELinux
popd
