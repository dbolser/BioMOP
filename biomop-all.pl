#!/usr/bin/perl 

use strict;
use warnings;

use Data::Dumper;
use Class::MOP;



## We bring in all the BPM here
use BioMOP;

warn "gotime\n";


## Abuse our BioMOP module...

open BPM, '<', 'BioMOP.pm'
    or die "sucks\n";

while(<BPM>){
    next unless /^use\s+(.*);$/;
    
    my $class = $1;
    
    #warn "$class\n";
    
    my $meta = Class::MOP::Class->initialize(package => $class);
    
    #print join q{ },$meta->class_precedence_list(),"\n";
    
    my @methods = $meta->get_all_methods;
    
    #print "\t", @methods." methods in $class\n";
    
    for my $method (sort { $a->package_name cmp $b->package_name } @methods){
	print "\t", $method->fully_qualified_name,"\n";
    }    
}

warn "OK\n";


