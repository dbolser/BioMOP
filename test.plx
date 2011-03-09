#!/usr/bin/perl -w

use strict;
use Data::Dumper;



use Class::Inspector;

#use Bio::Coordinate::Pair;
#my $foo = Class::Inspector->methods('Bio::Coordinate::Pair', 'expanded');

use Bio::Coordinate::Result;
my $foo = Class::Inspector->methods('Bio::Coordinate::Result', 'expanded');

#use Bio::Location::Split;
#my $foo = Class::Inspector->methods('Bio::Location::Split', 'expanded');

#print Dumper $foo, "\n";

my %ISAs;
for (@$foo){
  $ISAs{$_->[1]}++;
}

print "$_\n" for sort keys %ISAs;

my $x = Class::Inspector->subclasses Bio::Coordinate::Result->new;
print Dumper $x;



#require Devel::Symdump;

#my $obj = Devel::Symdump->rnew( qw( Bio::Coordinate::Pair ) );

#print Devel::Symdump->isa_tree, "\n";

#print join("\n", $obj->packages), "\n";



__END__

Class::Inspector
Class::MOP
Devel::TraceUse

Devel::Symdump

mro

PPI
