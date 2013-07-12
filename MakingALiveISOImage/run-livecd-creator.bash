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

# since we run as root, use global directories
rm -fr /opt/CompJournoStick; mkdir -p /opt/CompJournoStick
cp /usr/share/spin-kickstarts/*.ks /opt/CompJournoStick # base kickstart files
cp *.ks /opt/CompJournoStick/ # our over-rides

pushd /opt/CompJournoStick
setenforce 0
/usr/bin/time setarch i686 livecd-creator \
  --config=CompJournoStick.ks \
  --fslabel=CompJournoStick --cache=/var/cache/live
checkisomd5 --verbose CompJournoStick.iso
setenforce 1
popd
