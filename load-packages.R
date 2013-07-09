#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

install.packages(
  c(
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
  )
)
warnings()
devtools::install_github('devtools')
warnings()
require(devtools)
install_github(
  repo=c(
    'slidify',
    'slidifyLibraries',
    'rCharts'
  ),
  username='ramnathv'
)
warnings()
