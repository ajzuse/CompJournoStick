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

# must haves for task views
install.packages(
  c(
    'ctv',
    'rJava'
  ),
  repos='http://cran.fhcrc.org'
)
warnings()

# Graphics task view is part of base
library(ctv)
update.views(
  c(
    'Graphics'
  ),
  repos='http://cran.fhcrc.org'
)
warnings()

# Reproducible research task view
update.views(
  c(
    'ReproducibleResearch'
  ),
  repos='http://cran.fhcrc.org'
)
warnings()

# other packages
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
