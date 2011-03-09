#!/usr/bin/perl -w

use strict;
use Data::Dumper;

use Class::MOP;

#use Bio::Coordinate::Pair;

use Bio::Coordinate::Result;

#use Bio::Location::Split;


print Bio::Coordinate::Result->meta->class_precedence_list()
