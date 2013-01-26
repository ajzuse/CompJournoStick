#! /bin/bash
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

source ~/.bash_profile

# make sure openmpi is installed
sudo yum install -y openmpi openmpi-devel
sudo updatedb

# now, find stuff
export LIB=`locate openmpi|grep libmpi.so$|sed 's;/libmpi.so;;'`
echo ${LIB} > openmpi.conf 
sudo cp openmpi.conf /etc/ld.so.conf.d/openmpi.conf 
sudo /sbin/ldconfig

export INCLUDE=`locate openmpi|grep mpi.h$|sed 's;/mpi.h;;'`
export ARGS="--with-Rmpi-include=${INCLUDE} --with-Rmpi-libpath=${LIB} --with-Rmpi-type=OPENMPI"

rm -f Rmpi*tar.gz; R --no-save --no-restore < download-Rmpi.R
R CMD INSTALL --configure-args="${ARGS}" ./Rmpi*tar.gz
