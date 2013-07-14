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

pushd ../../Scripts
sudo rm -fr /opt/Target; sudo mkdir -p /opt/Target
cd Scripts; ./cleanup.bash; cd ..
sudo cp -a Scripts /opt/Target/Scripts
cd Docs; ./cleanup.bash; cd ..
sudo cp -a Docs /opt/Target/Docs
popd
