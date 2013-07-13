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

# R profile
cp Rprofile ~/.Rprofile

# Start RStudio to install packages in local library
echo "Starting RStudio to install library packages in your personal library:"
echo "1. In the 'File' menu, 'Open File' and select 'load-packages.R'."
echo "   You should see a tab with the contents of 'load-packages.R'."
echo "2. In the 'Code' menu, select 'Source'."
echo "   This will start the package installation."
echo "3. 'Quit RStudio' in the 'File' menu when installs are finished."
sleep 10
rstudio
