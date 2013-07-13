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

# get rid of any garbage
cd Scripts
./cleanup.bash
cd ..

# now copy stuff to /opt so the kickstart file can find it
sudo rm -fr /opt/Target; sudo mkdir -p /opt/Target
sudo cp -a Scripts /opt/Target/Scripts
sudo cp -a Doc /opt/Target/Doc
sudo cp -a ~/R /opt/Target/R
sudo chown -R 1000.1000 /opt/Target
