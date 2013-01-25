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

for i in Rgraphviz task-views packages
do
  ./rootload.bash ${i}
done

./load-tm.plugins-svn.bash 2>&1 | tee tm.plugins-svn.log
./load-sna-extras.bash 2>&1 | tee sna-extras.log
df -h > after-disk.log
