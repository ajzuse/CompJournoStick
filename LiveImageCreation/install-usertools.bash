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

# Package groups
sudo yum group install -y \
  lxde-desktop \
  lxde-apps \
  lxde-media \
  lxde-office \
  multimedia \
  firefox

# Miscellaneous packages
sudo yum install -y \
  vim-enhanced \
  vim-X11 \
  powertop \
  kernel-tools \

echo 'Install RStudio manually'
