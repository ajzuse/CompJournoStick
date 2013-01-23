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
if [ `uname -m` = "x86_64" ]
then 
  sudo yum install http://download1.rstudio.org/rstudio-0.97.311-x86_64.rpm
else
  sudo yum install http://download1.rstudio.org/rstudio-0.97.311-i686.rpm
fi
