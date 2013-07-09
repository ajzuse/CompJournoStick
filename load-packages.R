#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

# log output to a file
zz <- file("packages.log", open = "wt")
sink(zz, split=FALSE)
sink(zz, type="message", split=FALSE)

# install Reproducible Research and Graphics task views
install.packages('ctv')
require(ctv)
update.views(
  c(
    'ReproducibleResearch',
    'Graphics'
  ),
  quiet=TRUE
)

# install packages from CRAN
install.packages(
  c(
    'rggobi',
    'ggplot2',
    'reshapeGUI',
    'streamR',
    'twitteR',
    'shiny',
    'devtools',
    'knitcitations',
    'knitr',
    'knitrBootstrap',
    'Rcpp',
    'roxygen2',
    'testthat',
    'lubridate'
  ),
  quiet=TRUE
)
warnings()

# install packages from Github
devtools::install_github('devtools', quiet=TRUE)
warnings()
require(devtools)
install_github(
  repo=c(
    'slidify',
    'slidifyLibraries',
    'rCharts'
  ),
  username='ramnathv',
  quiet=TRUE
)
warnings()

# send output back to the console
sink(type="message")
sink()
