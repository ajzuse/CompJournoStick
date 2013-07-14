#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

# make a clean personal library
system('rm -fr ~/R')
system(paste('mkdir -p', Sys.getenv('R_LIBS_USER')))
.libPaths(Sys.getenv('R_LIBS_USER'))
print(.libPaths())

# install task views
install.packages('ctv')
require(ctv)
update.views(
  c(
    'Graphics',
    'ReproducibleResearch'
  ),
  coreOnly=FALSE,
  dependencies=TRUE
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
  dependencies=TRUE
)
warnings()
