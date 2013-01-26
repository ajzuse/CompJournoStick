#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

# Graphics task view needs Rgraphviz
source("http://bioconductor.org/biocLite.R", echo=TRUE)
biocLite('Rgraphviz')
warnings()

# must haves
install.packages(
  c(
    'ctv',
    'rJava'
  ),
  repos='http://cran.fhcrc.org'
)
warnings()
install.packages(
  c(
    'audio',
    'devtools',
    'doRedis',
    'e1071',
    'effects',
    'filehash',
    'filehashSQLite',
    'foreach',
    'HiveR',
    'inline',
    'leaps',
    'markdown',
    'quantmod',
    'rattle',
    'rbenchmark',
    'Rcmdr',
    'RcmdrPlugin.TextMining',
    'relimp',
    'RJSONIO',
    'roxygen2',
    'RPostgreSQL',
    'RSclient',
    'Rserve',
    'RSQLite',
    'RSQLite.extfuns',
    'seewave',
    'sem',
    'shiny',
    'testthat',
    'tm',
    'tm.plugin.dc',
    'tm.plugin.mail',
    'tuneR',
    'twitteR'
  ),
  repos='http://cran.fhcrc.org'
)
warnings()
