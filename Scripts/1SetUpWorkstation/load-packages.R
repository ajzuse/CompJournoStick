#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

# install task views
install.packages(
  c(
    'ctv',
    'Rcmdr'
  ),
  lib='/usr/share/R/library',
  dependencies=TRUE
)
require(ctv)
update.views(
  c(
    'Graphics',
    'ReproducibleResearch',
    'Spatial'
  ),
  lib='/usr/share/R/library',
  coreOnly=FALSE,
  dependencies=NA
)
warnings()

# install packages
install.packages(
  c(
    'RcmdrPlugin.temis',
    'tm.plugin.dc',
    'tm.plugin.mail',
    'tm.plugin.webmining',
    'tm.plugin.sentiment',
    'RWeather',
    'googlePublicData',
    'googleVis',
    'gooJSON',
    'mosaic',
    'whisker',
    'ggmap',
    'reshapeGUI',
    'streamR',
    'twitteR',
    'shiny',
    'devtools',
    'roxygen2',
    'testthat',
    'lubridate',
    'knitcitations'
  ),
  dependencies=NA,
  lib='/usr/share/R/library'
)
warnings()
