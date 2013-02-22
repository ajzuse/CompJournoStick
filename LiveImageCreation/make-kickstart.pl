#! /usr/bin/perl -w
#
# Copyright (C) 2012 by M. Edward (Ed) Borasky
#
# This program is licensed to you under the terms of version 3 of the
# GNU Affero General Public License. This program is distributed WITHOUT
# ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING THOSE OF NON-INFRINGEMENT,
# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Please refer to the
# AGPL (http://www.gnu.org/licenses/agpl-3.0.txt) for more details.
#

system './get-latest-workbench.bash';
my @files = `find Computational-Journalism-Publishers-Workbench-* -name 'yum-*.bash'`;

my $file;
foreach $file (@files) {
  next if $file =~ /updateos/;
  next if $file =~ /remove/;
  chomp $file;
  
  &listPackages($file);
}

exit;

sub listPackages {
  my ($file) = @_;
  print "${file}\n";
}
