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

install.packages(
  c(
    'ctv'
  ),
  repos='http://cran.fhcrc.org'
)
warnings()
library(ctv)
update.views(
  c(
    'NaturalLanguageProcessing',
    'ReproducibleResearch',
    'Graphics'
  ),
  repos='http://cran.fhcrc.org'
)
warnings()
