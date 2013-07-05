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

# Run update first
sudo yum update -y

# Basics
sudo yum install -y \
  vim-X11 \
  vim-enhanced \
  vim-perl-support \
  vim-vimoutliner \
  @Firefox\ Web\ Browser \
  git-all \
  R-java-devel

# RStudio Desktop
sudo yum install -y \
  http://download1.rstudio.org/rstudio-0.97.551-x86_64.rpm
