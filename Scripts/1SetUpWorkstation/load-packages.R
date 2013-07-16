#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

# set up environment
system('cp ../common/Rprofile ~/.Rprofile')
source('~/.Rprofile')

install.packages(
  c(
    'ggplot2',
    'reshapeGUI',
    'shiny',
    'devtools',
    'lubridate',
    'knitr',
    'knitcitations',
    'pander'
  ),
  dependencies=TRUE
)
warnings()
