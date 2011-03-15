#!/usr/bin/perl -w

use strict;


my $bioperl_dir =
  '/homes/dbolser/perl5/lib/perl5/Bio';

my @list_of_pms =
  `find $bioperl_dir -name "*.pm"`;

warn "dumping ", scalar(@list_of_pms), " PMs to 'package'\n";



print "package BioMOP;\n\n";

for my $pm (@list_of_pms){
  $pm =
    substr($pm, length($bioperl_dir)+1, -4);
  #warn "$pm\n";
  
  my @path = split( /\//, $pm);
  
  print
    'use  ', join('::', 'Bio', @path), ";\n";
}

print "\n1;\n\n";

warn "OK\n";

