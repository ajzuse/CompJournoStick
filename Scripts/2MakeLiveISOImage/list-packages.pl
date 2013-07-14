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

&listPackages('../1SetUpWorkstation/1SudoInstallTools.bash');
exit;

sub listPackages {
  my ($file) = @_;
  open SCRIPT, $file;
  while (<SCRIPT>) {
    next if $_ !~ /yum install/;
    while (<SCRIPT>) {
      last if $_ =~ /^[ \t]*$/; # done on blank line
      chomp $_;
      $_ =~ s/^  //; $_ =~ s/ .*$//;
      print "${_}\n";
    }
  }
  close SCRIPT;
}
