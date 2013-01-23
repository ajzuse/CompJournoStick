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

# since we run as root, use a global directory
rm -fr /opt/ROASt; mkdir -p /opt/ROASt
cp /usr/share/spin-kickstarts/*.ks /opt/ROASt # base kickstart files
cp *.ks /opt/ROASt/ # our over-rides

pushd /opt/ROASt
setenforce 0
/usr/bin/time setarch x86_64 livecd-creator \
  --config=ROASt.ks \
  --fslabel=ROASt --cache=/var/cache/live
checkisomd5 --verbose ROASt.iso
popd
