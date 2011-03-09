#!/usr/bin/perl 

use strict;
use warnings;

use Bio::Coordinate::Pair;
use Data::Dumper;
use Class::MOP;

my $class = 'Bio::Coordinate::Pair';
my $meta = Class::MOP::Class->initialize(package => $class);

print join q{ },$meta->class_precedence_list(),"\n";

my @methods = $meta->get_all_methods;

print @methods." methods in $class\n";

for my $method (sort { $a->package_name cmp $b->package_name } @methods){
    print $method->fully_qualified_name,"\n";
}


