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

source ~/.bash_profile
export HERE=`pwd`

# Run update first
sudo yum update -y

# Live CD/DVD and USB tools
sudo yum install -y \
  @development-tools \
  fedora-packager \
  yum-utils \
  livecd-tools \
  spin-kickstarts \
  liveusb-creator \
  isomd5sum \
  createrepo \
  R2spec \
  curl \
  wget \
  lynx \
  aria2 \
  fedora-review \
  mock

rm -fr ~/rpmbuild
rpmdev-setuptree

pushd ~/rpmbuild/SRPMS
yumdownloader --source opencv
sudo yum-builddep opencv*.src.rpm
rpmbuild --rebuild opencv*.src.rpm 2>&1 | tee ${HERE}/opencv.log
popd
