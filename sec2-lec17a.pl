use strict;
use warnings;

use Data::Dumper;

my @animals = ('dog','cat','rabbit');
my @fruits = ('apple','banana','orange');

my @values;

print "length of \@values before push \@animals and \@fruits = " . scalar(@values) . "\n";

push @values, @animals;
push @values, @fruits;

print "length of \@values after push \@animals and \@fruits = " . scalar(@values) . "\n";
print "elements withing \@values: \n";
print Dumper(@values);